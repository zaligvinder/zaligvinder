(declare-const X String)
; ^([1-9]|[1-9]\d|100)$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to_re "100")) (str.to_re "\u{a}")))))
; [$][0 -9]+
(assert (str.in_re X (re.++ (str.to_re "$") (re.+ (re.union (str.to_re "0") (re.range " " "9"))) (str.to_re "\u{a}"))))
(check-sat)
