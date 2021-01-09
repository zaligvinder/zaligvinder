(declare-const X String)
; ^(((\+{1})|(0{2}))98|(0{1}))9[1-9]{1}\d{8}\Z$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union ((_ re.loop 1 1) (str.to.re "+")) ((_ re.loop 2 2) (str.to.re "0"))) (str.to.re "98")) ((_ re.loop 1 1) (str.to.re "0"))) (str.to.re "9") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
