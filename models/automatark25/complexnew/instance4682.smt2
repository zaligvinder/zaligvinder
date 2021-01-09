(declare-const X String)
; ^[0-9]*[1-9]+$|^[1-9]+[0-9]*$
(assert (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; Points\d+Host\x3a\dBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Basicwww.webcruiser.cc\x0a")))))
(check-sat)
