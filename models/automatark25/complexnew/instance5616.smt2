(declare-const X String)
; from\s+\x2Fdss\x2Fcc\.2_0_0\.[^\n\r]*uploadServer
(assert (not (str.in.re X (re.++ (str.to.re "from") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/dss/cc.2_0_0.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "uploadServer\x0a")))))
; ^([A-Z]{2}?(\d{7}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")))))
(check-sat)
