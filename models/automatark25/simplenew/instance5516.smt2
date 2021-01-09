(declare-const X String)
; Host\x3A\d+FTPsearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "FTPsearch.dropspam.com\x0a")))))
(check-sat)
