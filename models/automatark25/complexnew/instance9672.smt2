(declare-const X String)
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a")))))
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3a\w+Pre.*Keyloggeradfsgecoiwnfhirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.* re.allchar) (str.to.re "Keyloggeradfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1b\x0a")))))
(check-sat)
