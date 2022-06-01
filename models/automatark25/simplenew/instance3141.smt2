(declare-const X String)
; [$][0 -9]+
(assert (str.in_re X (re.++ (str.to_re "$") (re.+ (re.union (str.to_re "0") (re.range " " "9"))) (str.to_re "\u{a}"))))
(check-sat)
