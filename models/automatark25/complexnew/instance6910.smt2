(declare-const X String)
; User-Agent\x3A\s+GETwww\x2Eoemji\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GETwww.oemji.com\x0a"))))
; ^[:*:]
(assert (str.in.re X (re.++ (re.union (str.to.re ":") (str.to.re "*")) (str.to.re "\x0a"))))
(check-sat)
