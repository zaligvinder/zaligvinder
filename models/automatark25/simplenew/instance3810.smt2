(declare-const X String)
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in.re X (re.++ (str.to.re "/version=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a")))))
(check-sat)
