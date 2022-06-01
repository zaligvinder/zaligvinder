(declare-const X String)
; Host\u{3A}\dwww\u{2E}trustedsearch\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}")))))
; \u{3C}logs\u{40}dummyserver\u{2E}com\u{3E}
(assert (not (str.in_re X (str.to_re "<logs@dummyserver.com>\u{a}"))))
(check-sat)
