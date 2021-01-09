(declare-const X String)
; this\w+c\.goclick\.comletter
(assert (not (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.comletter\x0a")))))
(check-sat)
