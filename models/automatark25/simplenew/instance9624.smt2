(declare-const X String)
; Subject\u{3A}EnTrYExplorer\u{2A}PORT2\u{2A}Host\u{3A}
(assert (str.in_re X (str.to_re "Subject:EnTrYExplorer*PORT2*Host:\u{a}")))
(check-sat)
