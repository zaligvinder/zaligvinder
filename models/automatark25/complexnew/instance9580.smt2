(declare-const X String)
; \b(0?[1-9]|1[0-2])(\-)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\-)(0[0-8])\b
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "-\x0a0") (re.range "0" "8"))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/shdoclc.fcgi\x0a")))))
; /\x2exul([\?\x5c\x2f]|$)/Umsi
(assert (str.in.re X (re.++ (str.to.re "/.xul") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/Umsi\x0a"))))
(check-sat)
