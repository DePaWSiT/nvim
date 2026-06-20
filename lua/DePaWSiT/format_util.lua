local M = {}

local disabled_formatters = {}

function M.toggle_formatter(name)
  disabled_formatters[name] = not disabled_formatters[name]
  require("snacks.notify").notify(string.format("%s %s", name, disabled_formatters[name] and "disabled" or "enabled"))
  require("lualine").refresh()
end

function M.is_disabled(name)
  return disabled_formatters[name] == true
end

function M.conform_formatters()
  local bufnr = vim.api.nvim_get_current_buf()
  local formatters = require("conform").list_formatters_for_buffer(bufnr)
  formatters = vim.tbl_filter(function(formatter)
    return not disabled_formatters[formatter]
  end, formatters)

  if #formatters == 0 then
    return "󰉼 None"
  end

  local primary = formatters[1]
  return "󰉼 " .. primary .. (#formatters > 1 and " +" .. (#formatters - 1) or "")
end

return M
