(declare-const X String)
; ChildWebGuardian\d+Subject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}")))))
(check-sat)
