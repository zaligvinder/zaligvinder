(declare-const X String)
; $(\n|\r\n)
(assert (str.in.re X (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a"))))
; (^(\d{2}\x2E\d{3}\x2E\d{3}[-]\d{1})$|^(\d{2}\x2E\d{3}\x2E\d{3})$)
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^([\w\-\.]+)\s.*$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
