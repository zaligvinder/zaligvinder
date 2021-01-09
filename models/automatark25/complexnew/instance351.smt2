(declare-const X String)
; .*-[0-9]{1,10}.*
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to.re "\x0a"))))
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "rt") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:\x0a")))))
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13") (re.+ (re.range "0" "9")) (str.to.re "url=enews.earthlink.net\x0a"))))
(check-sat)
