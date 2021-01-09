(declare-const X String)
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (re.+ (re.range "0" "9")) (str.to.re "v=User-Agent:\x0a"))))
(check-sat)
