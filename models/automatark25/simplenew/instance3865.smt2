(declare-const X String)
; (\d{1,3}[\.]\d*)[, ]+-?(\d{1,3}[\.]\d*)
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ",") (str.to.re " "))) (re.opt (str.to.re "-")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))))))
(check-sat)
