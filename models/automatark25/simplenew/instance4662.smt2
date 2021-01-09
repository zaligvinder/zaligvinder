(declare-const X String)
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.union (str.to.re "jpg") (str.to.re "jpeg") (str.to.re "JPG") (str.to.re "JPEG")) (str.to.re "\x0a")))))
(check-sat)
