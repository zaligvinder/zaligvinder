(declare-const X String)
; ShadowNet\dsearchresltAID\u{2F}User-Agent\u{3A}Fen\u{ea}treEye\u{2F}dss\u{2F}cc\.2_0_0\.
(assert (not (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchresltAID/User-Agent:Fen\u{ea}treEye/dss/cc.2_0_0.\u{a}")))))
(check-sat)
