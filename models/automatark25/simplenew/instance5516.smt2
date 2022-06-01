(declare-const X String)
; Host\u{3A}\d+FTPsearch\.dropspam\.com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "FTPsearch.dropspam.com\u{a}")))))
(check-sat)
