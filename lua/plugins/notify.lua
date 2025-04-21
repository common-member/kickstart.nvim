return {
  'rcarriga/nvim-notify',
  priority = 1000, -- 🔧 notifyをnoiceよりも先に読み込む
  lazy = false, -- 🔧 起動時に即読み込む（重要）
  config = function()
    local notify = require 'notify'
    vim.notify = notify

    notify.setup {
      stages = 'fade_in_slide_out', -- アニメーションの種類
      timeout = 3000, -- 通知が表示される時間（ms）
      background_colour = '#24283b', -- 背景色
      merge_duplicates = true, -- 同じ通知をまとめる
    }
  end,
}
