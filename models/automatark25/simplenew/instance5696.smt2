(declare-const X String)
; (AUX|PRN|NUL|COM\d|LPT\d)+\s*$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "AUX") (str.to.re "PRN") (str.to.re "NUL") (re.++ (str.to.re "COM") (re.range "0" "9")) (re.++ (str.to.re "LPT") (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
