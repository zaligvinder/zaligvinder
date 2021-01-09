(declare-const X String)
; X-Mailer\x3A\s+Toolbar\s+supremetoolbar\.comst=Host\x3A\x5Chome\/lordofsearchMicrosoftHost\x3a\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "supremetoolbar.comst=Host:\x5chome/lordofsearchMicrosoftHost:+The+password+is:\x0a")))))
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/AGPi\x0a"))))
; ^1000([.][0]{1,3})?$|^\d{1,3}$|^\d{1,3}([.]\d{1,3})$|^([.]\d{1,3})$
(assert (str.in.re X (re.union (re.++ (str.to.re "1000") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (str.to.re "0"))))) ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to.re "\x0a.") ((_ re.loop 1 3) (re.range "0" "9"))))))
(check-sat)
