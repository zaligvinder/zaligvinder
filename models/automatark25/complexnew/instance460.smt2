(declare-const X String)
; protocol\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "protocol") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a")))))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.asx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; [0-7]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "7")) (str.to.re "\x0a"))))
; ^((\d{3}[- ]\d{3}[- ]\d{2}[- ]\d{2})|(\d{3}[- ]\d{2}[- ]\d{2}[- ]\d{3}))$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; \x2FNFO\x2CRegistered.*Host\x3A\s+TPSystemHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/NFO,Registered") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:\x0a"))))
(check-sat)
