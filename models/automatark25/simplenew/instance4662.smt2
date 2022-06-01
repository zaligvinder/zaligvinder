(declare-const X String)
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (not (str.in_re X (re.++ (re.+ re.allchar) (str.to_re ".") (re.union (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "JPG") (str.to_re "JPEG")) (str.to_re "\u{a}")))))
(check-sat)
