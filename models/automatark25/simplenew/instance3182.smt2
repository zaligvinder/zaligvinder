(declare-const X String)
; User-Agent\u{3A}From\u{3A}www\u{2E}onlinecasinoextra\u{2E}comHost\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:From:www.onlinecasinoextra.comHost:\u{a}")))
(check-sat)
