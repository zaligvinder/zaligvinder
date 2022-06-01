(declare-const X String)
; /\/\?id=\d+\u{26}AnSSip=/Ui
(assert (str.in_re X (re.++ (str.to_re "//?id=") (re.+ (re.range "0" "9")) (str.to_re "&AnSSip=/Ui\u{a}"))))
(check-sat)
