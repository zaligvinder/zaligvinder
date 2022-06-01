(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}backtrust\u{2E}comHost\u{3A}pjpoptwql\u{2f}rlnj
(assert (str.in_re X (str.to_re "}{Trojan:backtrust.comHost:pjpoptwql/rlnj\u{a}")))
(check-sat)
