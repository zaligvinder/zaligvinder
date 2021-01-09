(declare-const X String)
; ^[1-9][0-9]{3}$
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a"))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (str.in.re X (re.++ (str.to.re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to.re "UI2\x0a"))))
(check-sat)
