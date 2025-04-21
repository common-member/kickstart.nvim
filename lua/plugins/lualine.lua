return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight', -- 好みのテーマでOK
        icons_enabled = true,
        disabled_filetypes = { 'neo-tree', 'NvimTree' }, -- ステータスライン非表示にするbuffer
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = {
          {
            'filename',
            path = 1, -- 0: ファイル名のみ, 1: 相対パス, 2: 絶対パス
            symbols = {
              modified = '●', -- 編集済み
              readonly = '', -- 読み取り専用
              unnamed = '[No Name]',
            },
          },
        },
        lualine_x = {
          {
            'diagnostics',
            sources = { 'nvim_lsp' },
            sections = { 'error', 'warn', 'info', 'hint' },
            symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
          },
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { 'quickfix', 'toggleterm' },
    }
  end,
}
