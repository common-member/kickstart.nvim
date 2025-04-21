return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('noice').setup {
      lsp = {
        progress = {
          enabled = true, -- LSPの進行状況表示
        },
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true, -- 検索UIを画面下部に
        command_palette = true, -- コマンドラインUIを中央に
        long_message_to_split = true, -- 長文メッセージを分割表示
        inc_rename = false, -- inc-rename.nvim使用時に有効化
        lsp_doc_border = true, -- LSPポップアップに枠線をつける
      },
    }

    -- `vim.notify` に `nvim-notify` を指定（上書き）
    vim.notify = require 'notify'
  end,
}
