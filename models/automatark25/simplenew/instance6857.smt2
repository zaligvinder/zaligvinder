(declare-const X String)
; /^\/ABs[A-Za-z0-9]+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//ABs") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}")))))
(check-sat)
