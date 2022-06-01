(declare-const X String)
; /filename=[^\n]*\u{2e}ogx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogx/i\u{a}"))))
; /\u{0}\.\u{0}\.\u{0}[\u{2f}\u{5c}]/R
(assert (str.in_re X (re.++ (str.to_re "/\u{0}.\u{0}.\u{0}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{a}"))))
; \u{2A}PORT1\u{2A}WarezX-Mailer\u{3A}Snake\u{2F}bonzibuddy\u{2F}
(assert (str.in_re X (str.to_re "*PORT1*WarezX-Mailer:\u{13}Snake/bonzibuddy/\u{a}")))
(check-sat)
