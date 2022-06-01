(declare-const X String)
; deskwizz\u{2E}comReportsadblock\u{2E}linkz\u{2E}comUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "deskwizz.comReportsadblock.linkz.comUser-Agent:\u{a}"))))
(check-sat)
