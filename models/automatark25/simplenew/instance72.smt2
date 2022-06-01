(declare-const X String)
; /\u{2F}[a-z]+\u{2e}png/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re ".png/Ui\u{a}")))))
(check-sat)
