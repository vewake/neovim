-- cpp_runner.lua

local Terminal = require("toggleterm.terminal").Terminal

-- Function to compile and run C++ file
local function compile_and_run_cpp()
  local file = vim.fn.expand("%")
  local output = vim.fn.expand("%:r")
  local compile_cmd = string.format("g++ %s -o %s", file, output)
  local run_cmd = string.format("./%s", output)

  -- Define a new terminal instance to run the commands
  local term = Terminal:new({
    cmd = string.format("%s && %s", compile_cmd, run_cmd),
    close_on_exit = false,
    direction = "horizontal",
  })

  -- Open the terminal
  term:toggle()
end

-- Set keybinding to compile and run C++ file
vim.api.nvim_set_keymap(
  "n",
  "<leader>r",
  ':lua require("cpp_runner").compile_and_run_cpp()<CR>',
  { noremap = true, silent = true }
)

return {
  compile_and_run_cpp = compile_and_run_cpp,
}
