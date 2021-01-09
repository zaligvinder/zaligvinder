(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (str.to.re "1") (re.range "0" "2"))))))
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (not (str.in.re X (re.++ (str.to.re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
