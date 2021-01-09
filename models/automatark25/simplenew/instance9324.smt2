(declare-const X String)
; ([^_.]([a-zA-Z0-9_]*[.]?[a-zA-Z0-9_]+[^_]){2})@([a-z0-9]+[.]([a-z]{2,3}|[a-z]{2,3}[.][a-z]{2,3}))
(assert (str.in.re X (re.++ (str.to.re "@\x0a") (re.union (str.to.re "_") (str.to.re ".")) ((_ re.loop 2 2) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (re.comp (str.to.re "_")))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") (re.union ((_ re.loop 2 3) (re.range "a" "z")) (re.++ ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")))))))
(check-sat)
