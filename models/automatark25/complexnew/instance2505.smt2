(declare-const X String)
; ^0(6[045679][0469]){1}(\-)?(1)?[^0\D]{1}\d{6}$
(assert (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.++ (str.to.re "6") (re.union (str.to.re "0") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "9")) (re.union (str.to.re "0") (str.to.re "4") (str.to.re "6") (str.to.re "9")))) (re.opt (str.to.re "-")) (re.opt (str.to.re "1")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; (^\d*\.\d{2}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
; .*[Pp]re[Ss\$]cr[iI1]pt.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "P") (str.to.re "p")) (str.to.re "re") (re.union (str.to.re "S") (str.to.re "s") (str.to.re "$")) (str.to.re "cr") (re.union (str.to.re "i") (str.to.re "I") (str.to.re "1")) (str.to.re "pt") (re.* re.allchar) (str.to.re "\x0a")))))
; ^([0-9]{1,2},([0-9]{2},)*[0-9]{3}|[0-9]+)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^(s-|S-){0,1}[0-9]{3}\s?[0-9]{2}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "s-") (str.to.re "S-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
