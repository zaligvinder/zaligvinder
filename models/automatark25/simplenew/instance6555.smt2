(declare-const X String)
; ^(^[0-9]*(^[0-9]*[\.][0-9]+){0,1}$)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.opt (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))))))
(check-sat)
