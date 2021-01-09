(declare-const X String)
; configINTERNAL\.ini\s+User-Agent\x3A\s+Host\x3ASubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:\x0a")))))
; /\/se\/[a-f0-9]{100,200}\/[a-f0-9]{6,9}\/[A-Z0-9_]{4,200}\.com/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//se/") ((_ re.loop 100 200) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 6 9) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 4 200) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re ".com/Ui\x0a")))))
; ^([7-9]{1})([0-9]{9})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "7" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (str.in.re X (str.to.re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\x0a")))
(check-sat)
