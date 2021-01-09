(declare-const X String)
; ([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9]):(0[0-9]|[1-5][0-9])(\.[0-999])?((\+|-)([0-1][0-9]|2[0-4]):(0[0-9]|[1-5][0-9])|Z)?
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.union (re.range "0" "9") (str.to.re "9")))) (re.opt (re.union (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "5") (re.range "0" "9")))) (str.to.re "Z"))) (str.to.re "\x0a")))))
; (^[0]{1}$|^[-]?[1-9]{1}\d*$)
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (str.to.re "0")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[0]*?[1-9]\d*\.?[0]*$
(assert (str.in.re X (re.++ (re.* (str.to.re "0")) (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (str.to.re "0")) (str.to.re "\x0a"))))
; com\x2Findex\.php\?tpid=.*pop\x2Epopuptoast\x2Ecom.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "com/index.php?tpid=") (re.* re.allchar) (str.to.re "pop.popuptoast.com") (re.* re.allchar) (str.to.re "Host:\x0a"))))
(check-sat)
