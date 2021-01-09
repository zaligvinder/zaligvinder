(declare-const X String)
; X-Mailer\x3AisSubject\x3a
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13isSubject:\x0a"))))
; /filename=[^\n]*\x2ecpe/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a"))))
(check-sat)
