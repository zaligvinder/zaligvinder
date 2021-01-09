(declare-const X String)
; ^[A-Z]$
(assert (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a"))))
; ^([A-Z]{0,3}?[0-9]{9}($[0-9]{0}|[A-Z]{1}))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 0 3) (re.range "A" "Z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union ((_ re.loop 0 0) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")))))))
; ^(\d?)*\.?(\d{1}|\d{2})?$
(assert (str.in.re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.opt (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /(\x17\x00|\x00\x5C)\x00e\x00l\x00s\x00e\x00x\x00t\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x17\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00e\x00l\x00s\x00e\x00x\x00t\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
(check-sat)
