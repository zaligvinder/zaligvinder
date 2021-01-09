(declare-const X String)
; (((0[1-9]|(1|2)[0-9]|3[0-1])\/(0(1|3|5|7|8)|1(0|2)))|((0[1-9]|(1|2)[0-9]|30)\/(0(4|6|9)|11))|((0[1-9]|(1|2)[0-9])\/02))\/[0-9]{4}
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2"))))) (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30")) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.union (str.to.re "4") (str.to.re "6") (str.to.re "9"))) (str.to.re "11"))) (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9"))) (str.to.re "/02"))) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([1-9]|1[0-2])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a"))))
; configINTERNAL\.ini\s+User-Agent\x3A\s+Host\x3ASubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:\x0a")))))
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "FI") (str.to.re "HU") (str.to.re "LU") (str.to.re "MT") (str.to.re "SI")) (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
