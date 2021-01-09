(declare-const X String)
; ^[0-9]{6}-[0-9pPtTfF][0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") (re.union (re.range "0" "9") (str.to.re "p") (str.to.re "P") (str.to.re "t") (str.to.re "T") (str.to.re "f") (str.to.re "F")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^((\.\./|[a-zA-Z0-9_/\-\\])*\.[a-zA-Z0-9]+)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.union (str.to.re "../") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "/") (str.to.re "-") (str.to.re "\x5c"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
; ^[\n <"';]*([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+)
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "\x0a") (str.to.re " ") (str.to.re "<") (str.to.re "\x22") (str.to.re "'") (str.to.re ";"))) (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-")))))))
(check-sat)
