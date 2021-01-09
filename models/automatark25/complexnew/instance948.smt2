(declare-const X String)
; (\b(1|2|3|4|5|6|7|8|9)?[0-9]\b)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.range "0" "9")))))
; ^\d{5}((\-|\s)?\d{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^((0[1-9])|(1[0-2]))\/(\d{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\$[0-9]+(\.[0-9][0-9])?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
