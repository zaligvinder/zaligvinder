(declare-const X String)
; /filename=[a-z]{5,8}\d{2,3}\.jar\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".jar\x0d\x0a/Hm\x0a")))))
(check-sat)
