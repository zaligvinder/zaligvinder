(declare-const X String)
; IP\d+horoscopefowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.+ (re.range "0" "9")) (str.to.re "horoscopefowclxccdxn/uxwn.ddy\x0a")))))
(check-sat)
