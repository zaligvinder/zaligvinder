(declare-const X String)
; \b[1-9]{1}[0-9]{1,5}-\d{2}-\d\b
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; [a-z]{1}[a-z0-9\-_\.]{2,24}@tlen\.pl
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 2 24) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re "."))) (str.to.re "@tlen.pl\x0a"))))
(check-sat)
