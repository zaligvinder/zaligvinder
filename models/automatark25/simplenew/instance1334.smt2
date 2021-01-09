(declare-const X String)
; [a-z]{1}[a-z0-9\-_\.]{2,24}@tlen\.pl
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 2 24) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re "."))) (str.to.re "@tlen.pl\x0a"))))
(check-sat)
