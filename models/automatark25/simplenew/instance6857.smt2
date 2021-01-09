(declare-const X String)
; /^\/ABs[A-Za-z0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//ABs") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
