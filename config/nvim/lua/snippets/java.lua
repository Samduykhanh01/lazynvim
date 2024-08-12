local M = {}

-- Function to replace the first line with the template if it starts with !!!
local function replace_first_line_with_template()
  -- Get the current buffer's file name without extension
  local file_name = vim.fn.expand("%:t:r")

  -- Define the template with the file name
  local template = string.format(
    [[
public class %s{

    public static void main(String[] args) {
        // TODO Auto-generated method stub

    }

}
]],
    file_name
  )

  -- Get the first line of the buffer
  local line = vim.api.nvim_get_current_line()
  if line:match("^!!!") then
    -- Replace the first line with the template
    vim.api.nvim_set_current_line(template)
    -- Move the cursor to the start of the file
    vim.cmd("normal! 1G")
  end
end

function M.setup()
  -- Create an autocommand to trigger the function when a Java file is opened
  vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*.java",
    callback = replace_first_line_with_template,
  })
end

-- Return the module table with setup function
return M
