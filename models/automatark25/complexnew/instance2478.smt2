(declare-const X String)
; ^[\d]{4}[-\s]{1}[\d]{3}[-\s]{1}[\d]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/m1\.exe$/U
(assert (not (str.in.re X (str.to.re "//m1.exe/U\x0a"))))
; action\x2EIP-FTPsearch\.dropspam\.com
(assert (str.in.re X (str.to.re "action.IP-FTPsearch.dropspam.com\x0a")))
(check-sat)
