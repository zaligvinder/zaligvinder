(declare-const X String)
; Serverulmxct\u{2f}mqoycWinSession\u{2F}client\u{2F}\u{2A}PORT1\u{2A}
(assert (not (str.in_re X (str.to_re "Serverulmxct/mqoycWinSession/client/*PORT1*\u{a}"))))
(check-sat)
