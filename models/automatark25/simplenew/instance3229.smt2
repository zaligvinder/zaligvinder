(declare-const X String)
; ShadowNet\s+AID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in.re X (re.++ (str.to.re "ShadowNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AID/User-Agent:Fen\xeatreEye/dss/cc.2_0_0.\x0a")))))
(check-sat)
