(declare-const X String)
; \.exe\s+ZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (not (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ZC-Bridgev.xml/NFO,Registered\x0a")))))
; /^\x01\x02.{0,50}[a-zA-Z]{10}\x2fPK.{0,50}[a-zA-Z]{10}\x2f[a-zA-Z]{7}\.classPK/sR
(assert (not (str.in.re X (re.++ (str.to.re "/\x01\x02") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/PK") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/") ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".classPK/sR\x0a")))))
; ^0[234679]{1}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\d{1,3}\.){3}\d{1,3}
(assert (str.in.re X (re.union (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; X-Mailer\x3a+\x2Fcbn\x2FearchSchwindler
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "/cbn/earchSchwindler\x0a")))))
(check-sat)
