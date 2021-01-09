(declare-const X String)
; (\+91(-)?|91(-)?|0(-)?)?(9)[0-9]{9}
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "+91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "0") (re.opt (str.to.re "-"))))) (str.to.re "9") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[a-zA-Z]{1}[0-9]{1}[a-zA-Z]{1}(\-| |){1}[0-9]{1}[a-zA-Z]{1}[0-9]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
