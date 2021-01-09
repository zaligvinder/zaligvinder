(declare-const X String)
; /^\x2Fcap\x2Ftemp\x2F[A-Za-z0-9]+\x2Ejpg/miU
(assert (str.in.re X (re.++ (str.to.re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jpg/miU\x0a"))))
(check-sat)
