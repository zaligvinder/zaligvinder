(declare-const X String)
; /^\/\d\u{2e}exe/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.range "0" "9") (str.to_re ".exe/Ui\u{a}")))))
(check-sat)
