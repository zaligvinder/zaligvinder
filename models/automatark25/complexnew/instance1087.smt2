(declare-const X String)
; /filename=[^\n]*\u{2e}ses/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}"))))
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (not (str.in_re X (re.union (str.to_re "10.") (re.++ (str.to_re "172.1") (re.range "6" "9") (str.to_re ".")) (re.++ (str.to_re "172.2") (re.range "0" "9") (str.to_re ".")) (re.++ (str.to_re "172.3") (re.range "0" "1") (str.to_re ".")) (str.to_re "192.168.") (str.to_re "127.0.0.1\u{a}")))))
; (\b(10|11|12|13|14|15|16|17|18|19)[0-9]\b)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.range "0" "9") (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))))))
(check-sat)
