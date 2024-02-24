local animate = require("mini.animate")

animate.setup({
  cursor = {
      -- Animate for 200 milliseconds with linear easing
      timing = animate.gen_timing.linear({ duration = 200, unit = 'total' }),

      -- Animate with shortest line for any cursor move
      path = animate.gen_path.line({
        predicate = function() return true end,
      }),
  },

  scroll = {
      -- Animate for 200 milliseconds with linear easing
      timing = animate.gen_timing.linear({ duration = 200, unit = 'total' }),

      -- Animate equally but with at most 120 steps instead of default 60
      subscroll = animate.gen_subscroll.equal({ max_output_steps = 60 })
  }

})
