(declare-const X String)
; ^.*(yourdomain.com).*$
(assert (str.in_re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to_re "\u{a}yourdomain") re.allchar (str.to_re "com"))))
(check-sat)
