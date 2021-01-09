(declare-const X String)
; ^((\d{1,3}((,\d{3})*|\d*)(\.{0,1})\d+)|\d+)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
