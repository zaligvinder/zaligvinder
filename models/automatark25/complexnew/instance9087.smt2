(declare-const X String)
; ^\d{5}-\d{3}$|^\d{8}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2erpt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rpt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to.re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^(\+{1,2}?([0-9]{2,4}|\([0-9]{2,4}\))?(-|\s)?)?[0-9]{2,3}(-|\s)?[0-9\-]{5,10}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 1 2) (str.to.re "+")) (re.opt (re.union ((_ re.loop 2 4) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ")")))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 10) (re.union (re.range "0" "9") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
