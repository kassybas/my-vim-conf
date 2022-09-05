
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--
-- Buffers --
--
-- Move to previous/next
-- Alt - <|>
map('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
map('n', '≥', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
-- Alt - Shift - <|>
map('n', '¯', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '˘', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
-- Alt - [0-9]
map('n', '¡', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '€', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '£', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '¢', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '∞', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '§', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '¶', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '•', '<Cmd>BufferGoto 8<CR>', opts)
map('n', 'ª', '<Cmd>BufferGoto 9<CR>', opts)
map('n', 'º', '<Cmd>BufferLast<CR>', opts)
-- Format
map('n', 'Ï', '<Cmd>GoFmt<CR>', opts)
-- Close buffer
-- Alt - w
map('n', '∑', '<Cmd>BufferClose<CR>', opts)

--

-- Telescope
-- Alt - f
map('n', 'ƒ', '<Cmd>Telescope find_files<CR>', opts)
-- Alt - g
map('n', '©', '<Cmd>Telescope live_grep<CR>', opts)


-- Tree
-- Alt - b
map('n', '∫', '<Cmd>NvimTreeToggle<CR>', opts)

-- Alt - m
map('n', 'µ', '<Cmd>MarksToggleSigns<CR>', opts)

-- Registers
-- Alt - r
map('n', '®', '<Cmd>Telescope neoclip<CR>', opts)


