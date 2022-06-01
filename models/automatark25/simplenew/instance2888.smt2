(declare-const X String)
; Host\u{3A}Wordmyway\.comhoroscope2Host
(assert (not (str.in_re X (str.to_re "Host:Wordmyway.comhoroscope2Host\u{a}"))))
(check-sat)
