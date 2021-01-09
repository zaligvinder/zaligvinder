(declare-const X String)
; /^POST\x20\x2f[A-F\d]{42}\x20HTTP/
(assert (not (str.in.re X (re.++ (str.to.re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re " HTTP/\x0a")))))
; Yeah\!User-Agent\x3a
(assert (str.in.re X (str.to.re "Yeah!User-Agent:\x0a")))
; Googlelog\=\x7BIP\x3APG=SPEEDBAR
(assert (str.in.re X (str.to.re "Googlelog={IP:PG=SPEEDBAR\x0a")))
(check-sat)
