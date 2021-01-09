(declare-const X String)
; Referer\x3A.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
(check-sat)
