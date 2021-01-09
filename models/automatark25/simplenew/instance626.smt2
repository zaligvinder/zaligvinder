(declare-const X String)
; ([1-9]{1,2})?(d|D)([1-9]{1,3})((\+|-)([1-9]{1,3}))?
(assert (str.in.re X (re.++ (re.opt ((_ re.loop 1 2) (re.range "1" "9"))) (re.union (str.to.re "d") (str.to.re "D")) ((_ re.loop 1 3) (re.range "1" "9")) (re.opt (re.++ (re.union (str.to.re "+") (str.to.re "-")) ((_ re.loop 1 3) (re.range "1" "9")))) (str.to.re "\x0a"))))
(check-sat)
