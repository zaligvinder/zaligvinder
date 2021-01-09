(declare-const X String)
; ^((\.\./|[a-zA-Z0-9_/\-\\])*\.[a-zA-Z0-9]+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.union (str.to.re "../") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "/") (str.to.re "-") (str.to.re "\x5c"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))
; ^[ .a-zA-Z0-9:-]{1,150}$
(assert (str.in.re X (re.++ ((_ re.loop 1 150) (re.union (str.to.re " ") (str.to.re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ":") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
