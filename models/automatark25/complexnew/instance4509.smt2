(declare-const X String)
; ^[H][R][\-][0-9]{5}$
(assert (str.in.re X (re.++ (str.to.re "HR-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[a-zA-Z]\w{3,14}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 3 14) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; ^((0[1-9])|(1[0-2]))\/(\d{2})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]@[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][a-z0-9]{2,4}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
