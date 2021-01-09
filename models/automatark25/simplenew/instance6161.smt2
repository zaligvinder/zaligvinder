(declare-const X String)
; Subject\x3A\s+Host\x3A.*www\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.alfacleaner.com\x0a"))))
(check-sat)
