(declare-const X String)
; /\/3001[0-9A-F]{262,304}/
(assert (not (str.in.re X (re.++ (str.to.re "//3001") ((_ re.loop 262 304) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/\x0a")))))
(check-sat)
