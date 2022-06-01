(declare-const X String)
; myway\.comzmnjgmomgbdz\u{2f}zzmw\.gztUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "myway.comzmnjgmomgbdz/zzmw.gztUser-Agent:\u{a}")))
(check-sat)
