(declare-const X String)
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (not (str.in.re X (re.++ (str.to.re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; /filename=[^\n]*\x2efon/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fon/i\x0a"))))
(check-sat)
