(declare-const X String)
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to.re "&r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
