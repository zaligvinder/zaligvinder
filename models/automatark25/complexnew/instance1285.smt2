(declare-const X String)
; Spy\dccecaedbebfcaf\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}")))))
; ^[0-9,]+['][-](\d|1[01])"$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ","))) (str.to_re "'-") (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{22}\u{a}"))))
; Stealth\u{2E}phpSpyAgentHost\u{3A}IterenetUser-Agent\u{3A}Host\u{3A}Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (str.to_re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\u{a}")))
(check-sat)
