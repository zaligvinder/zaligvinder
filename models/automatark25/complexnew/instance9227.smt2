(declare-const X String)
; (a|A)
(assert (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "A")) (str.to.re "\x0a"))))
; ^(([0-9]|1[0-9]|2[0-4])(\.[0-9][0-9]?)?)$|([2][5](\.[0][0]?)?)$
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.++ (str.to.re "\x0a25") (re.opt (re.++ (str.to.re ".0") (re.opt (str.to.re "0")))))))))
; /\x2fblackmuscats?\x3f\d/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//blackmuscat") (re.opt (str.to.re "s")) (str.to.re "?") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; ^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "1" "9")) (re.++ (re.range "0" "9") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
