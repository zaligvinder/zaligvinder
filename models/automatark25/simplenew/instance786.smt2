(declare-const X String)
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "OSSProxy") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.com\x0a"))))
(check-sat)
