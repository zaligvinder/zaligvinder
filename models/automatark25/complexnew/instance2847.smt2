(declare-const X String)
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a")))))
; /\/\?[a-z0-9]{9}\=[a-zA-Z0-9]{45}/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 45 45) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)
