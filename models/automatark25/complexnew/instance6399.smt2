(declare-const X String)
; /filename=[a-z]{5,8}\d{2,3}\.swf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".swf\x0d\x0a/Hm\x0a"))))
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in.re X (str.to.re "hirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a"))))
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovplrichfind.comCookie:\x0a")))))
(check-sat)
