if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap  <silent> ;c <cmd>lua require('telescope.builtin').colorscheme()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

require('telescope').setup{ defaults = { file_ignore_patterns = {"vendor","node_modules"} } }

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF


