(declare-const X String)
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a"))))
; 0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,}
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (str.to.re "0")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 3 3) (str.to.re "1")) (re.* (str.to.re "1"))) (re.++ ((_ re.loop 3 3) (str.to.re "2")) (re.* (str.to.re "2"))) (re.++ ((_ re.loop 3 3) (str.to.re "3")) (re.* (str.to.re "3"))) (re.++ ((_ re.loop 3 3) (str.to.re "4")) (re.* (str.to.re "4"))) (re.++ ((_ re.loop 3 3) (str.to.re "5")) (re.* (str.to.re "5"))) (re.++ ((_ re.loop 3 3) (str.to.re "6")) (re.* (str.to.re "6"))) (re.++ ((_ re.loop 3 3) (str.to.re "7")) (re.* (str.to.re "7"))) (re.++ ((_ re.loop 3 3) (str.to.re "8")) (re.* (str.to.re "8"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (str.to.re "9")) (re.* (str.to.re "9")))))))
; /\/[a-zA-Z_-]+\.ee$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".ee/U\x0a"))))
(check-sat)
