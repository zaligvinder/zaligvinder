(declare-const X String)
; X-Mailer\u{3A}isSubject\u{3a}
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}isSubject:\u{a}")))
; ^[^']*$
(assert (not (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "\u{a}")))))
(check-sat)
