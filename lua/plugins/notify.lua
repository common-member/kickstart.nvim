return {
  'rcarriga/nvim-notify',
  config = function()
    vim.notify = require 'notify'
    require('notify').setup {
      stages = 'fade_in_slide_out', -- アニメーションの種類
      timeout = 3000, -- 通知が表示される時間（ms）
      background_colour = '#24283b', -- 背景色（テーマに合わせて調整）
      merge_duplicates = true, -- 🔥 これが必須！
    }
  end,
}
