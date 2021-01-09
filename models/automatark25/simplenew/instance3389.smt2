(declare-const X String)
; ^([1-9]|[1-9]\d|100)$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a"))))
(check-sat)
