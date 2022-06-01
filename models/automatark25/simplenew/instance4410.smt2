(declare-const X String)
; www\u{2E}onlinecasinoextra\u{2E}comsearchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (str.to_re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\u{a}"))))
(check-sat)
