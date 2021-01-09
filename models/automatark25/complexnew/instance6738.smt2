(declare-const X String)
; ^[2-9]\d{2}-\d{3}-\d{4}$
(assert (not (str.in.re X (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename\=[a-z0-9]{24}\.jar/H
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/H\x0a"))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (str.in.re X (re.++ (str.to.re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to.re "UI2\x0a"))))
; /^[-+]?[1-9](\d*|((\d{1,2})?,(\d{3},)*(\d{3})))?([eE][-+]\d+)?$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "1" "9") (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.union (str.to.re "-") (str.to.re "+")) (re.+ (re.range "0" "9")))) (str.to.re "/\x0a"))))
(check-sat)
