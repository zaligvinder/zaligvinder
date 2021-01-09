(declare-const X String)
; [-+]((0[0-9]|1[0-3]):([03]0|45)|14:00)
(assert (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "+")) (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "3"))) (str.to.re ":") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "3")) (str.to.re "0")) (str.to.re "45"))) (str.to.re "14:00")) (str.to.re "\x0a"))))
; ^100$|^[0-9]{1,2}$|^[0-9]{1,2}\,[0-9]{1,3}$
(assert (not (str.in.re X (re.union (str.to.re "100") ((_ re.loop 1 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a"))))))
; httphost\dActivityfilename=\x22
(assert (not (str.in.re X (re.++ (str.to.re "httphost") (re.range "0" "9") (str.to.re "Activityfilename=\x22\x0a")))))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a"))))
(check-sat)
