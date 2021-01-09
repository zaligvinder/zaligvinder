(declare-const X String)
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(\d){2}-(\d){2}-(\d){2}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; (^3[47])((\d{11}$)|(\d{13}$))
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9"))) (str.to.re "\x0a3") (re.union (str.to.re "4") (str.to.re "7"))))))
(check-sat)
