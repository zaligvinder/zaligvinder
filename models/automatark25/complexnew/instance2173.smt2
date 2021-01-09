(declare-const X String)
; ^(\d+(,\d+)*)+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a")))))
; e(vi?)?
(assert (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a"))))
; /^GET\s\x2f[A-F0-9]{152}/m
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/m\x0a"))))
; /\/blog\/images\/3521\.jpg\?v\d{2}=\d{2}\x26tq=/Ui
(assert (str.in.re X (re.++ (str.to.re "//blog/images/3521.jpg?v") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "&tq=/Ui\x0a"))))
; ^([1][12]|[0]?[1-9])[\/-]([3][01]|[12]\d|[0]?[1-9])[\/-](\d{4}|\d{2})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
