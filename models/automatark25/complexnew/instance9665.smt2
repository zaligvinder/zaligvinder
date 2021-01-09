(declare-const X String)
; comUser-Agent\x3Asi=PORT\x3D\x2Fpagead\x2Fads\?Host\x3a\x2Fdesktop\x2F
(assert (not (str.in.re X (str.to.re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\x0a"))))
; yddznydqir\x2feviaresflashdownloader\x2Ecom
(assert (not (str.in.re X (str.to.re "yddznydqir/eviaresflashdownloader.com\x0a"))))
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in.re X (str.to.re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\x0a")))
(check-sat)
