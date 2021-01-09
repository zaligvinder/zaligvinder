(declare-const X String)
; Fictional\sHost\x3AWordmyway\.com
(assert (str.in.re X (re.++ (str.to.re "Fictional") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.com\x0a"))))
; User-Agent\x3A[^\n\r]*Host\x3A.*\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/toolbar/Host:User-Agent:\x0a"))))
(check-sat)
