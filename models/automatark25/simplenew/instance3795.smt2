(declare-const X String)
; ^\d*[0-9](|.\d*[0-9]|,\d*[0-9])?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.union (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re ",") (re.* (re.range "0" "9")) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
