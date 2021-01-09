(declare-const X String)
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "057-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))))
; ^\d{5}(\-)(\d{3})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^(\d|,)*\d*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a"))))
(check-sat)
