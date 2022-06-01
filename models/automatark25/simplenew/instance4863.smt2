(declare-const X String)
; ^([1-9]+)?[13579]$
(assert (str.in_re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (str.to_re "\u{a}"))))
(check-sat)
