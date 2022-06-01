(declare-const X String)
; TPSystemHost\u{3a}\u{7D}\u{7B}User\u{3A}Alert\u{2F}cgi-bin\u{2F}X-Mailer\u{3A}
(assert (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}")))
(check-sat)
