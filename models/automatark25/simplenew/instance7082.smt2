(declare-const X String)
; User-Agent\u{3A}Web-Mail
(assert (not (str.in_re X (str.to_re "User-Agent:Web-Mail\u{a}"))))
(check-sat)
