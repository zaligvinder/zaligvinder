(declare-const X String)
; ^[2-7]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "2" "7")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a"))))
; ^((192\.168\.0\.)(1[7-9]|2[0-9]|3[0-2]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a192.168.0.") (re.union (re.++ (str.to.re "1") (re.range "7" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "2")))))))
; \+353\(0\)\s\d\s\d{3}\s\d{4}
(assert (str.in.re X (re.++ (str.to.re "+353(0)") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; si=\s+ProAgentUI2Host\x3A00000www\x2Ezhongsou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "si=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ProAgentUI2Host:00000www.zhongsou.com\x0a"))))
(check-sat)
