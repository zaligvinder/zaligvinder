(declare-const X String)
; (^\d{5}\x2D\d{3}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))))
; /^\x2f[A-Za-z0-9+~=]{16,17}\x2f[A-Za-z0-9+~=]{35,40}\x2f[A-Za-z0-9+~=]{8}\x2f[A-Za-z0-9+~=]*?\x2f[A-Za-z0-9+~=]{12,30}$/I
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 16 17) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 35 40) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 12 30) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/I\x0a")))))
; www\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (str.to.re "www.serverlogic3.com\x0a"))))
; LOG\swww\x2Esearchwords\x2EcomHost\x3A
(assert (str.in.re X (re.++ (str.to.re "LOG") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.comHost:\x0a"))))
(check-sat)
