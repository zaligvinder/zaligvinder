(declare-const X String)
; Host\x3a\dATTENTION\x3A[^\n\r]*From\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "From:User-Agent:\x0a"))))
(check-sat)
