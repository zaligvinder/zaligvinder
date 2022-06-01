(declare-const X String)
; Computer\u{7D}\u{7B}Sysuptime\u{3A}www\u{2E}ezula\u{2E}comanswerServerHost\u{3A}serveradfsgecoiwnf
(assert (str.in_re X (str.to_re "Computer}{Sysuptime:www.ezula.comanswerServerHost:serveradfsgecoiwnf\u{1b}\u{a}")))
(check-sat)
