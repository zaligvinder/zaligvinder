(declare-const X String)
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (str.to.re "Cookie:AppName/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
(check-sat)
