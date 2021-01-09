(declare-const X String)
; \d+([\.|\,][0]+?[1-9]+)?
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) (re.+ (str.to.re "0")) (re.+ (re.range "1" "9")))) (str.to.re "\x0a"))))
(check-sat)
