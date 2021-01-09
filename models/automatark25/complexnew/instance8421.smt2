(declare-const X String)
; /^\x2f[A-Za-z0-9+~=]{16,17}\x2f[A-Za-z0-9+~=]{35,40}\x2f[A-Za-z0-9+~=]{8}\x2f[A-Za-z0-9+~=]*?\x2f[A-Za-z0-9+~=]{12,30}$/I
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 16 17) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 35 40) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 12 30) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/I\x0a")))))
; Host\x3AHost\x3asidebar\.activeshopper\.com
(assert (str.in.re X (str.to.re "Host:Host:sidebar.activeshopper.com\x0a")))
; ^[1-9]\d?-\d{7}$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
