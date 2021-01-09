(declare-const X String)
; ^([0]{0,1}[0-7]{3})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "0")) ((_ re.loop 3 3) (re.range "0" "7")))))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a"))))
; (((\+44)? ?(\(0\))? ?)|(0))( ?[0-9]{3,4}){3}
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "+44")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(0)")) (re.opt (str.to.re " "))) (str.to.re "0")) ((_ re.loop 3 3) (re.++ (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
