(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (str.in.re X (re.++ (str.to.re "/encoding=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a"))))
(check-sat)
