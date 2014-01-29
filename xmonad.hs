import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.ManageDocks
import Data.Ratio ((%))

main = xmonad defaultConfig
    { terminal      = "xterm"
    , layoutHook    = layout'
    , modMask       = mod4Mask
    , borderWidth   = 1
    }

layout' = avoidStruts (smartBorders (tiled ||| Mirror tiled ||| Full))
            where
              tiled   = Tall nmaster delta ratio
              -- The default number of windows in the master pane
              nmaster = 1
              -- Default proportion of screen occupied by master pane
              ratio   = 2%3
              -- Percent of screen to increment by when resizing panes
              delta   = 5%100
