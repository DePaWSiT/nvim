return {
  "tpope/vim-fugitive",
  event = "VeryLazy",
  enabled = true,
  dependancies = {
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim",
  },
  config = function()
    local notify = require("snacks.notify")
    local notif_opts = {
      title = "Vim Fugutive",
      icon = "󰊢",
    }

    local job = require("plenary.job")

    -- Step 0: Check if we're inside a Git repository
    job
      :new({
        command = "git",
        args = { "rev-parse", "--is-inside-work-tree" },
        on_exit = function(check_repo_job, code0)
          if code0 ~= 0 or check_repo_job:result()[1] ~= "true" then
            notify.warn("Not inside a Git repository.", notif_opts)
            return
          end

          -- Step 1: Get current branch name
          job
            :new({
              command = "git",
              args = { "rev-parse", "--abbrev-ref", "HEAD" },
              on_exit = function(get_branch_job, code1)
                if code1 ~= 0 then
                  notify.warn("Failed to determine current branch job.", notif_opts)
                  return
                end

                local branch = get_branch_job:result()[1]

                -- Step 2: Run `git fetch`
                job
                  :new({
                    command = "git",
                    args = { "fetch" },
                    on_start = function()
                      notify.notify("Running fetch on current branch.", notif_opts)
                    end,
                    on_exit = function(_, code2)
                      if code2 ~= 0 then
                        notify.warn("Fetch failed.", notif_opts)
                        return
                      end

                      -- Step 3: Count how many commits are available to pull
                      job
                        :new({
                          command = "git",
                          args = { "rev-list", "--count", string.format("HEAD..origin/%s", branch) },
                          on_exit = function(count_job, code3)
                            if code3 ~= 0 then
                              notify.warn("Failed to check for incoming commits.", notif_opts)
                              return
                            end

                            local result = count_job:result()[1]
                            local count = tonumber(result)

                            if count and count > 0 then
                              notify.notify(
                                string.format("%d commit(s) available to pull on '%s'.", count, branch),
                                notif_opts
                              )
                            else
                              notify.notify(string.format("Your branch '%s' is up to date.", branch), notif_opts)
                            end
                          end,
                        })
                        :start()
                    end,
                  })
                  :start()
              end,
            })
            :start()
        end,
      })
      :start()
  end,
}
