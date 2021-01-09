(declare-const X String)
; (^\-?[0-9]*\.?[0-9]+$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))))))
(check-sat)
