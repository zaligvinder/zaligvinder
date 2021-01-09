(declare-const X String)
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "/bonzibuddy/origin=sidefindApofisUser-Agent:\x0a"))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (str.to.re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\x0a")))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a")))))
(check-sat)
