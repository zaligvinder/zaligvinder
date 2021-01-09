(declare-const X String)
; /^id\x3d[A-F\d]{32}(\x26info\x3d[A-F\d]{24})?$/P
(assert (not (str.in.re X (re.++ (str.to.re "/id=") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (re.opt (re.++ (str.to.re "&info=") ((_ re.loop 24 24) (re.union (re.range "A" "F") (re.range "0" "9"))))) (str.to.re "/P\x0a")))))
(check-sat)
