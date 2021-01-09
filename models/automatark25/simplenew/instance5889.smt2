(declare-const X String)
; ^(100([\.\,]0{1,2})?)|(\d{1,2}[\.\,]\d{1,2})|(\d{0,2})$
(assert (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 1 2) (str.to.re "0"))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
