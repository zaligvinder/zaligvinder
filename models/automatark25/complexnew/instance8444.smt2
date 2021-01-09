(declare-const X String)
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in.re X (re.++ (str.to.re "/version=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a")))))
; /^[0-9]+\.d{3}? *$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (str.to.re "d")) (re.* (str.to.re " ")) (str.to.re "/\x0a")))))
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13wlpgskmv/lwzo.qv#Subject:Activity\x0a"))))
; /^\x2f[A-Za-z0-9+~=]{16,17}\x2f[A-Za-z0-9+~=]{35,40}\x2f[A-Za-z0-9+~=]{8}\x2f[A-Za-z0-9+~=]*?\x2f[A-Za-z0-9+~=]{12,30}$/I
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 16 17) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 35 40) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") (re.* (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/") ((_ re.loop 12 30) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "~") (str.to.re "="))) (str.to.re "/I\x0a")))))
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:Host:TeomaBarHost:HoursHost:\x0a")))
(check-sat)
