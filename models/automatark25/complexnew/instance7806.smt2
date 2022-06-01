(declare-const X String)
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}")))))
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to_re "&r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
(check-sat)
