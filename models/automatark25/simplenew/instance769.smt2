(declare-const X String)
; ^(0|1)+$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "\u{a}"))))
(check-sat)
