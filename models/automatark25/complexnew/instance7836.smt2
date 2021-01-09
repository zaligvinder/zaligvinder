(declare-const X String)
; ^.*(yourdomain.com).*$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to.re "\x0ayourdomain") re.allchar (str.to.re "com"))))
; (\*\*)(.+)(\*\*)
(assert (str.in.re X (re.++ (str.to.re "**") (re.+ re.allchar) (str.to.re "**\x0a"))))
(check-sat)
