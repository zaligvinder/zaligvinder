(declare-const X String)
; ^([A-Z]{2}?(\d{7}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9"))))))
; /filename=[a-z]{5,8}\d{2,3}\.swf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".swf\x0d\x0a/Hm\x0a"))))
(check-sat)
