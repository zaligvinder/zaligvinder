(declare-const X String)
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.* (re.union (str.to.re "/") (str.to.re "\x5c"))) (re.opt (re.++ (str.to.re ".") (re.* (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re "."))))) (str.to.re "\x0a"))))
; ^(([A-Z])([a-zA-Z0-9]+)?)(\:)(\d+)$
(assert (str.in.re X (re.++ (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0a") (re.range "A" "Z") (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
(check-sat)
