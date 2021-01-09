(declare-const X String)
; /\/\?id=\d+\x26AnSSip=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?id=") (re.+ (re.range "0" "9")) (str.to.re "&AnSSip=/Ui\x0a")))))
(check-sat)
