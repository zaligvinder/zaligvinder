(declare-const X String)
; ([^,0-9]\D*)([0-9]*|\d*\,\d*)$
(assert (str.in.re X (re.++ (re.union (re.* (re.range "0" "9")) (re.++ (re.* (re.range "0" "9")) (str.to.re ",") (re.* (re.range "0" "9")))) (str.to.re "\x0a") (re.union (str.to.re ",") (re.range "0" "9")) (re.* (re.comp (re.range "0" "9"))))))
; ^[A-Za-z]{3,4}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 3 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
