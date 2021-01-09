(declare-const X String)
; ^.+\@.+\..+$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.+ re.allchar) (str.to.re ".") (re.+ re.allchar) (str.to.re "\x0a"))))
(check-sat)
