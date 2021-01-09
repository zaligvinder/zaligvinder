(declare-const X String)
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a"))))
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".class/U\x0a"))))
; ((\d{1,5})*\.*(\d{0,3})"[W|D|H|DIA][X|\s]).*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a") (re.* ((_ re.loop 1 5) (re.range "0" "9"))) (re.* (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re "\x22") (re.union (str.to.re "W") (str.to.re "|") (str.to.re "D") (str.to.re "H") (str.to.re "I") (str.to.re "A")) (re.union (str.to.re "X") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
(check-sat)
