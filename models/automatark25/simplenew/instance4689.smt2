(declare-const X String)
; comUser-Agent\x3Asi=PORT\x3D\x2Fpagead\x2Fads\?Host\x3a\x2Fdesktop\x2F
(assert (not (str.in.re X (str.to.re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\x0a"))))
(check-sat)
