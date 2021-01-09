(declare-const X String)
; /\/DES\d{9}O\d{4,5}\x2ejsp/Ui
(assert (str.in.re X (re.++ (str.to.re "//DES") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "O") ((_ re.loop 4 5) (re.range "0" "9")) (str.to.re ".jsp/Ui\x0a"))))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re "Apofis") (re.* re.allchar) (str.to.re "Port.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,Registered\x0a"))))
; Toolbar\d+Host\x3A\d+4\x2e8\x2e4\x7D\x7BTrojan\x3Aare
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "4.8.4}{Trojan:are\x0a"))))
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (not (str.in.re X (re.++ (str.to.re ".bmp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "couponbar.coupons.com") (re.* re.allchar) (str.to.re "Host:Host:HTTPwww\x0a")))))
; httphostHost\x3aAgent\x22
(assert (not (str.in.re X (str.to.re "httphostHost:Agent\x22\x0a"))))
(check-sat)
