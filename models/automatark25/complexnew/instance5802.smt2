(declare-const X String)
; ^\$?([A-Za-z]{0,2})\$?([0-9]{0,5}):?\$?([A-Za-z]{0,2})\$?([0-9]{0,5})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) ((_ re.loop 0 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re "$")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (str.to.re ":")) (re.opt (str.to.re "$")) ((_ re.loop 0 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re "$")) ((_ re.loop 0 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.com\x0a")))))
; ^(((20)((0[0-9])|(1[0-1])))|(([1][^0-8])?\d{2}))((0[1-9])|1[0-2])((0[1-9])|(2[0-9])|(3[01]))[-]?\d{4}$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "20") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.++ (re.opt (re.++ (str.to.re "1") (re.range "0" "8"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
