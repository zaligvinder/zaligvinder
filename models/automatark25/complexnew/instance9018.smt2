(declare-const X String)
; ^[A-Z][a-z]+(o(i|u)(n|(v)?r(t)?|s|t|x)(e(s)?)?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0ao") (re.union (str.to.re "i") (str.to.re "u")) (re.union (str.to.re "n") (re.++ (re.opt (str.to.re "v")) (str.to.re "r") (re.opt (str.to.re "t"))) (str.to.re "s") (str.to.re "t") (str.to.re "x")) (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "s")))))))
; \x7D\x7BTrojan\x3A\w+Host\x3A\s\d\x2El
(assert (str.in.re X (re.++ (str.to.re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (str.to.re ".l\x0a"))))
; username=(.*)&password=(.*)
(assert (str.in.re X (re.++ (str.to.re "username=") (re.* re.allchar) (str.to.re "&password=") (re.* re.allchar) (str.to.re "\x0a"))))
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (not (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a")))))
; 0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (str.to.re "0")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 3 3) (str.to.re "1")) (re.* (str.to.re "1"))) (re.++ ((_ re.loop 3 3) (str.to.re "2")) (re.* (str.to.re "2"))) (re.++ ((_ re.loop 3 3) (str.to.re "3")) (re.* (str.to.re "3"))) (re.++ ((_ re.loop 3 3) (str.to.re "4")) (re.* (str.to.re "4"))) (re.++ ((_ re.loop 3 3) (str.to.re "5")) (re.* (str.to.re "5"))) (re.++ ((_ re.loop 3 3) (str.to.re "6")) (re.* (str.to.re "6"))) (re.++ ((_ re.loop 3 3) (str.to.re "7")) (re.* (str.to.re "7"))) (re.++ ((_ re.loop 3 3) (str.to.re "8")) (re.* (str.to.re "8"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (str.to.re "9")) (re.* (str.to.re "9"))))))
(check-sat)
