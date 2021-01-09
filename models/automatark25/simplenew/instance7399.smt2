(declare-const X String)
; ^.*(yourdomain.com).*$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to.re "\x0ayourdomain") re.allchar (str.to.re "com"))))
(check-sat)
