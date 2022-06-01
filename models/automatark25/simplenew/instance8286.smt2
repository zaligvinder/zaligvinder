(declare-const X String)
; /\/blog\/images\/3521\.jpg\?v\d{2}=\d{2}\u{26}tq=/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//blog/images/3521.jpg?v") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "&tq=/Ui\u{a}")))))
(check-sat)
