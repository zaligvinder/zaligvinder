(declare-const X String)
; /^\/\d\x2eexe/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.range "0" "9") (str.to.re ".exe/Ui\x0a")))))
(check-sat)
