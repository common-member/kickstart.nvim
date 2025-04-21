return {
  'shellRaining/hlchunk.nvim',
  event = { 'UIEnter' }, -- 起動時に自動読み込み
  config = function()
    require('hlchunk').setup {
      chunk = {
        enable = true,
        use_treesitter = true, -- より正確な構造表示
        notify = true, -- nvim-notify を使う場合
        style = {
          { fg = '#A3BE8C' }, -- chunk lineの色（任意で変更可）
        },
      },
      indent = {
        enable = true,
        chars = { '🐾' }, -- インデントガイドの文字
        style = {
          { fg = '#4C566A' }, -- インデントの色（カスタムOK）
        },
      },
      line_num = {
        enable = false, -- 行番号ハイライトを無効化（お好みでtrueに）
      },
      blank = {
        enable = false, -- 空行ガイド（お好みでtrueに）
      },
    }
  end,
}
