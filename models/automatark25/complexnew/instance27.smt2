(declare-const X String)
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (not (str.in.re X (str.to.re "<chat>\x1bHost:tid={\x0a"))))
; ^(.*)
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a"))))
; ^((\+\s?\d{2}|\(?00\s?\d{2}\)?)\s?\d{2}\s?\d{3}\s?\d{4})
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "+") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "(")) (str.to.re "00") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
