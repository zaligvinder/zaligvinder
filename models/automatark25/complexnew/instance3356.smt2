(declare-const X String)
; ([0-9a-zA-Z]+)|([0-9a-zA-Z][0-9a-zA-Z\\s]+[0-9a-zA-Z]+)
(assert (not (str.in.re X (re.union (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "\x5c") (str.to.re "s"))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))))))
; ^((\b[A-Z0-9](\w)*\b)|\s)*$
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^([1-9]{1}|[1-9]{1}[0-9]{1,3}|[1-5]{1}[0-9]{4}|6[0-4]{1}[0-9]{3}|65[0-4]{1}[0-9]{2}|655[0-2]{1}[0-9]{1}|6553[0-6]{1})$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "5")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "6") ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "65") ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "655") ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "6553") ((_ re.loop 1 1) (re.range "0" "6")))) (str.to.re "\x0a")))))
(check-sat)
