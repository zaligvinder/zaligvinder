(declare-const X String)
; (^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])$)|(^([0-9]|[1][0-9]|[2][0-3])$)
(assert (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "\x0a")))))
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to.re "&r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; Referer\x3aHost\x3aport\x3aactivity
(assert (str.in.re X (str.to.re "Referer:Host:port:activity\x0a")))
(check-sat)
