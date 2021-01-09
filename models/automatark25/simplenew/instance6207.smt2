(declare-const X String)
; User-Agent\x3AUser-Agent\x3Awp-includes\x2Ftheme\x2Ephp\x3Fframe_ver2
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\x0a")))
(check-sat)
