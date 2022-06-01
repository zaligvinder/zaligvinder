(declare-const X String)
; (AUX|PRN|NUL|COM\d|LPT\d)+\s*$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "AUX") (str.to_re "PRN") (str.to_re "NUL") (re.++ (str.to_re "COM") (re.range "0" "9")) (re.++ (str.to_re "LPT") (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)
