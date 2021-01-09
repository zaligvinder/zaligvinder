(declare-const X String)
; /\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B(\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B){500}/m
(assert (not (str.in.re X (re.++ (str.to.re "/\xf6\xec\xd9\xb3g\xcf\x9e={") ((_ re.loop 500 500) (str.to.re "\xf6\xec\xd9\xb3g\xcf\x9e={")) (str.to.re "/m\x0a")))))
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (str.in.re X (str.to.re "www.maxifiles.comServidor.\x13\x0a")))
; /\x2ecsd([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.csd") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
