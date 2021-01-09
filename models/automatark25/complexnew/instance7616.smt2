(declare-const X String)
; (^\d{5}\-\d{3}$)|(^\d{2}\.\d{3}\-\d{3}$)|(^\d{8}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /\/[a-z0-9]{9}\.jnlp$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a"))))
; Guarded\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a")))))
(check-sat)
