(declare-const X String)
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a"))))
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "OSSProxy") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.com\x0a")))))
(check-sat)
