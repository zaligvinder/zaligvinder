(declare-const X String)
; ChildWebGuardian\d+Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a"))))
(check-sat)
