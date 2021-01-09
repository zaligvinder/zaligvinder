(declare-const X String)
; ^(^[0-9]*(^[0-9]*[\.][0-9]+){0,1}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.opt (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)
