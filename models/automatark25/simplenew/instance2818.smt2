(declare-const X String)
; /(USER|NICK)\x20BOSS\x2d[A-Z0-9\x5b\x5d\x2d]{15}/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "USER") (str.to.re "NICK")) (str.to.re " BOSS-") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "[") (str.to.re "]") (str.to.re "-"))) (str.to.re "/\x0a"))))
(check-sat)
