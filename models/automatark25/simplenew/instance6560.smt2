(declare-const X String)
; username=(.*)&password=(.*)
(assert (not (str.in.re X (re.++ (str.to.re "username=") (re.* re.allchar) (str.to.re "&password=") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
