import XMonad
import XMonad.Layout.Spacing
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Util.EZConfig
import XMonad.Hooks.UrgencyHook
import System.IO
import Graphics.X11.ExtraTypes.XF86

main = do
  xmproc <- spawnPipe "xmobar /home/carter/.xmonad/xmobar.hs"
  xmonad $ def
    { modMask = mod4Mask
    , terminal  = "urxvt"
    , focusedBorderColor = "blue"
    , borderWidth = 2
    , manageHook = manageDocks <+> manageHook def
    , layoutHook = avoidStruts $ spacing 6 $ layoutHook def
    , handleEventHook = mconcat [docksEventHook, handleEventHook def]
    }
    `additionalKeysP`
    [ ("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10")
    , ("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10")
    , ("M-p", spawn "rofi")
    ]

