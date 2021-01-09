(declare-const X String)
; /^\x2f[a-f0-9]{135}/Um
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 135 135) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Um\x0a")))))
; www\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a")))
; ([^a-zA-Z0-9])
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
