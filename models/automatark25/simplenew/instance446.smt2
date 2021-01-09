(declare-const X String)
; /sid=[0-9A-F]{32}/U
(assert (not (str.in.re X (re.++ (str.to.re "/sid=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/U\x0a")))))
(check-sat)
