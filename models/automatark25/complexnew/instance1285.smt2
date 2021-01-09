(declare-const X String)
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
; ^[0-9,]+['][-](\d|1[01])"$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re "'-") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a"))))
; Stealth\x2EphpSpyAgentHost\x3AIterenetUser-Agent\x3AHost\x3AHost\x3Aorigin\x3Dsidefind
(assert (str.in.re X (str.to.re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\x0a")))
(check-sat)
