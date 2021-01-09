(declare-const X String)
; (^\+?([1-8])?\d(\.\d+)?$)|(^-90$)|(^-(([1-8])?\d(\.\d+)?$))
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "-90") (re.++ (str.to.re "\x0a-") (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))))))
(check-sat)
