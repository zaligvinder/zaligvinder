(declare-const X String)
; /filename=[^\n]*\x2eses/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a"))))
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (not (str.in.re X (re.union (str.to.re "10.") (re.++ (str.to.re "172.1") (re.range "6" "9") (str.to.re ".")) (re.++ (str.to.re "172.2") (re.range "0" "9") (str.to.re ".")) (re.++ (str.to.re "172.3") (re.range "0" "1") (str.to.re ".")) (str.to.re "192.168.") (str.to.re "127.0.0.1\x0a")))))
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.range "0" "9") (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))))))
(check-sat)
