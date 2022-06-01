(declare-const X String)
; /^\/\d+$/Ui
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
(check-sat)
