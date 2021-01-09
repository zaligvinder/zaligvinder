(declare-const X String)
; ^(\(?[0-9]{3}[\)-\.]?\ ?)?[0-9]{3}[-\.]?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.range ")" ".")) (re.opt (str.to.re " ")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([A-z]{2}\d{9}[Gg][Bb])|(\d{12})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "B") (str.to.re "b"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; activityHWAEHost\x3aMyWayServidor\x2EHANDYEmail
(assert (not (str.in.re X (str.to.re "activityHWAEHost:MyWayServidor.\x13HANDYEmail\x0a"))))
; ^(\d){2}-(\d){2}-(\d){2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[0,1]?\d{1}\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3}))$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1"))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/") (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1"))))) (str.to.re "/") (re.union (re.++ ((_ re.loop 1 1) (str.to.re "1")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
