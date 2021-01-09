(declare-const X String)
; /\.php\?action=jv\&h=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
