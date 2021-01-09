(declare-const X String)
; Host\x3a\dATTENTION\x3A.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
(check-sat)
