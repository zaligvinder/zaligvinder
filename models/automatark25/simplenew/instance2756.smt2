(declare-const X String)
; horoscope2Cookie\x3adatATTENTION\x3AKontiki
(assert (str.in.re X (str.to.re "horoscope2Cookie:datATTENTION:Kontiki\x0a")))
(check-sat)
