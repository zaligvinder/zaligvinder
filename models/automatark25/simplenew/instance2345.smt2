(declare-const X String)
; horoscope2Cookie\u{3a}datATTENTION\u{3A}Kontiki
(assert (str.in_re X (str.to_re "horoscope2Cookie:datATTENTION:Kontiki\u{a}")))
(check-sat)
