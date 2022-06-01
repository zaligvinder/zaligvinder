(declare-const X String)
; /\?[a-f0-9]{4}$/miU
(assert (str.in_re X (re.++ (str.to_re "/?") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/miU\u{a}"))))
; ATL\w+SoftActivitypassword\u{3B}0\u{3B}Incorrect
(assert (not (str.in_re X (re.++ (str.to_re "ATL") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "SoftActivity\u{13}password;0;Incorrect\u{a}")))))
(check-sat)
