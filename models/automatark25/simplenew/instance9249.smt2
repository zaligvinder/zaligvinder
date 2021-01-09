(declare-const X String)
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "client.baigoo.com\x0a")))))
(check-sat)
