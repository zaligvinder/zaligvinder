(declare-const X String)
; /\x2f[A-F0-9]{158}/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; Fictional\sHost\x3AWordmyway\.com
(assert (not (str.in.re X (re.++ (str.to.re "Fictional") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.com\x0a")))))
; (^(2014)|^(2149))\d{11}$
(assert (str.in.re X (re.++ (re.union (str.to.re "2014") (str.to.re "2149")) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
