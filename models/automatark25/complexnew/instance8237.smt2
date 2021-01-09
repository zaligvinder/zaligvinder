(declare-const X String)
; /\?[a-f0-9]{4}$/miU
(assert (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/miU\x0a"))))
; ATL\w+SoftActivitypassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (re.++ (str.to.re "ATL") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13password;0;Incorrect\x0a")))))
(check-sat)
