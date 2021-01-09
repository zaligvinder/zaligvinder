(declare-const X String)
; /filename=[^\n]*\x2epdf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a")))))
; /filename=[a-z]{5,8}\d{2,3}\.swf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".swf\x0d\x0a/Hm\x0a"))))
(check-sat)
