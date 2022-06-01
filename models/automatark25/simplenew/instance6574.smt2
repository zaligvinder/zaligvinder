(declare-const X String)
; \u{2F}rssScaneradfsgecoiwnf\u{7D}\u{7B}Trojan\u{3A}logsHost\u{3a}
(assert (not (str.in_re X (str.to_re "/rssScaneradfsgecoiwnf\u{1b}}{Trojan:logsHost:\u{a}"))))
(check-sat)
