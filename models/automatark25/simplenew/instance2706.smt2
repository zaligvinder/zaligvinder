(declare-const X String)
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (str.in_re X (re.union (str.to_re "10.") (re.++ (str.to_re "172.1") (re.range "6" "9") (str.to_re ".")) (re.++ (str.to_re "172.2") (re.range "0" "9") (str.to_re ".")) (re.++ (str.to_re "172.3") (re.range "0" "1") (str.to_re ".")) (str.to_re "192.168.") (str.to_re "127.0.0.1\u{a}"))))
(check-sat)
