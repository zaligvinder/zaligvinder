(declare-const X String)
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
; ((^([\d]{1,3})(,{1}([\d]{3}))*)|(^[\d]*))((\.{1}[\d]{2})?$)
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ ((_ re.loop 1 1) (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.* (re.range "0" "9"))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
