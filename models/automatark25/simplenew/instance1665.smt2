(declare-const X String)
; User-Agent\u{3A}upgrade\u{2E}qsrch\u{2E}info
(assert (str.in_re X (str.to_re "User-Agent:upgrade.qsrch.info\u{a}")))
(check-sat)
