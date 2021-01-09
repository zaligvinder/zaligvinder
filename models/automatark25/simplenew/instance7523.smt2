(declare-const X String)
; Subject\x3A.*User-Agent\x3A.*ResultATTENTION\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:\x0a")))))
(check-sat)
