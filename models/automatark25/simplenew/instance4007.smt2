(declare-const X String)
; ^((\d{1,2})?([.][\d]{1,2})?){1}[%]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) ((_ re.loop 1 1) (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
