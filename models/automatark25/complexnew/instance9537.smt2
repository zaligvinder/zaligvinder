(declare-const X String)
; ^(\d+\.\d+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))))
; actualnames\.com\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fast-look.comwww.maxifiles.com\x0a"))))
(check-sat)
