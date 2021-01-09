(declare-const X String)
; ([^,0-9]\D*)([0-9]*|\d*\,\d*)$
(assert (not (str.in.re X (re.++ (re.union (re.* (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (str.to.re ",") (re.* (re.range "0" "9")))) (str.to.re "\x0a") (re.union (str.to.re ",") (re.range "0" "9")) (re.* (re.comp (re.range "0" "9")))))))
(check-sat)
