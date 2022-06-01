(declare-const X String)
; weatherSubject\u{3a}X-Mailer\u{3a}TOOLBAR\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (str.to_re "weatherSubject:X-Mailer:\u{13}TOOLBAR/newsurfer4/\u{a}"))))
(check-sat)
