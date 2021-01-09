(declare-const X String)
; ^\{?[a-fA-F\d]{32}\}?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "{")) ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt (str.to.re "}")) (str.to.re "\x0a")))))
(check-sat)
