(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a"))))
; Ready\s+Client\dFrom\x3AWebtool\x2Eworld2\x2EcnUser-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.range "0" "9") (str.to.re "From:Webtool.world2.cn\x13User-Agent:User-Agent:URLencoderthis|Connected\x0a")))))
; ^([1-9]+\d{0,2},(\d{3},)*\d{3}(\.\d{1,2})?|[1-9]+\d*(\.\d{1,2})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; 0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (str.to.re "0")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 3 3) (str.to.re "1")) (re.* (str.to.re "1"))) (re.++ ((_ re.loop 3 3) (str.to.re "2")) (re.* (str.to.re "2"))) (re.++ ((_ re.loop 3 3) (str.to.re "3")) (re.* (str.to.re "3"))) (re.++ ((_ re.loop 3 3) (str.to.re "4")) (re.* (str.to.re "4"))) (re.++ ((_ re.loop 3 3) (str.to.re "5")) (re.* (str.to.re "5"))) (re.++ ((_ re.loop 3 3) (str.to.re "6")) (re.* (str.to.re "6"))) (re.++ ((_ re.loop 3 3) (str.to.re "7")) (re.* (str.to.re "7"))) (re.++ ((_ re.loop 3 3) (str.to.re "8")) (re.* (str.to.re "8"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (str.to.re "9")) (re.* (str.to.re "9"))))))
; ^\d$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
