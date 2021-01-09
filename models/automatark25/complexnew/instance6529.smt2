(declare-const X String)
; EFError.*\x2Fcs\x2Fpop4\x2F[^\n\r]*
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "/cs/pop4/") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; tv\x2E180solutions\x2EcomGirlFriendHost\x3A
(assert (str.in.re X (str.to.re "tv.180solutions.comGirlFriendHost:\x0a")))
; ShadowNet\s+AID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in.re X (re.++ (str.to.re "ShadowNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AID/User-Agent:Fen\xeatreEye/dss/cc.2_0_0.\x0a")))))
(check-sat)
