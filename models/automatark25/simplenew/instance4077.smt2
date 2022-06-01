(declare-const X String)
; are\d+X-Mailer\u{3a}+\d+v=User-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (re.+ (re.range "0" "9")) (str.to_re "v=User-Agent:\u{a}"))))
(check-sat)
