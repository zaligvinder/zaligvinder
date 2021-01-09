(declare-const X String)
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (str.in.re X (re.union (str.to.re "10.") (re.++ (str.to.re "172.1") (re.range "6" "9") (str.to.re ".")) (re.++ (str.to.re "172.2") (re.range "0" "9") (str.to.re ".")) (re.++ (str.to.re "172.3") (re.range "0" "1") (str.to.re ".")) (str.to.re "192.168.") (str.to.re "127.0.0.1\x0a"))))
(check-sat)
