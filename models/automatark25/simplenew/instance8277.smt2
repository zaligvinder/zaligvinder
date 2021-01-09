(declare-const X String)
; ^\d+([^.,])?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re ","))) (str.to.re "\x0a")))))
(check-sat)
