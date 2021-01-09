(declare-const X String)
; ^[+-]?\d+(\.\d{1,4})? *%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
(check-sat)
