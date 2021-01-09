(declare-const X String)
; /\x3d\x0a$/P
(assert (str.in.re X (str.to.re "/=\x0a/P\x0a")))
; ^[0-9]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
