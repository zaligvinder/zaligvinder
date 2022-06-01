(declare-const X String)
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (str.in_re X (re.++ (str.to_re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to_re "&r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
(check-sat)
