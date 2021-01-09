(declare-const X String)
; (-?(\d*\.\d{1}?\d*|\d{1,}))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "9")))))))
(check-sat)
