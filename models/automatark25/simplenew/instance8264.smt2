(declare-const X String)
; /filename=[a-z]{5,8}\d{2,3}\.jar\u{d}\u{a}/Hm
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ".jar\u{d}\u{a}/Hm\u{a}")))))
(check-sat)
