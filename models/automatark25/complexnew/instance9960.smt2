(declare-const X String)
; [-'a-zA-Z]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a")))))
; Ts2\x2F\s+insertinfoSnakeUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insertinfoSnakeUser-Agent:\x0a"))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.altnet.com\x1b") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; config\x2E180solutions\x2Ecom\dStableWeb-MailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:\x0a"))))
(check-sat)
