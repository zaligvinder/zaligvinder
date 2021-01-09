(declare-const X String)
; ShadowNet\dsearchresltAID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in.re X (re.++ (str.to.re "ShadowNet") (re.range "0" "9") (str.to.re "searchresltAID/User-Agent:Fen\xeatreEye/dss/cc.2_0_0.\x0a")))))
(check-sat)
