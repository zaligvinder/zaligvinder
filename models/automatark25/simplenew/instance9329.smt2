(declare-const X String)
; ^(([A-Z])([a-zA-Z0-9]+)?)(\:)(\d+)$
(assert (not (str.in.re X (re.++ (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0a") (re.range "A" "Z") (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
(check-sat)
