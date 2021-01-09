(declare-const X String)
; ^(0?\d|1[012])\/([012]?\d|3[01])\/(\d{2}|\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\x3A
(assert (str.in.re X (str.to.re "A-311www3.addfreestats.comAttachedX-Mailer:\x13\x0a")))
(check-sat)
