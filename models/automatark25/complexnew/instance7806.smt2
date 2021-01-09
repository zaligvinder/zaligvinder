(declare-const X String)
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a")))))
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to.re "&r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
