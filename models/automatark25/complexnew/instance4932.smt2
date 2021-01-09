(declare-const X String)
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (not (str.in.re X (re.++ (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (str.to.re "\x22")) (str.to.re "cid") (re.* (str.to.re " ")) (str.to.re ":") (re.* (str.to.re " ")) (re.+ (re.union (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re " "))) (str.to.re "\x0a")))))
; ((\\")|[^"(\\")])+
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x5c\x22") (str.to.re "\x22") (str.to.re "(") (str.to.re "\x5c") (str.to.re ")"))) (str.to.re "\x0a")))))
; ^([1-9][0-9]?|100)%$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to.re "100")) (str.to.re "%\x0a"))))
; ^[SC]{2}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "S") (str.to.re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
