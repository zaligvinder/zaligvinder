(declare-const X String)
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a"))))
; User-Agent\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; ^[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; /[a-z]{2}_[a-z0-9]{8}\.mod/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_") ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".mod/Ui\x0a")))))
(check-sat)
