(declare-const X String)
; rank\u{2E}toolbarbrowser\u{2E}comlnzzlnbk\u{2f}pkrm\.fin
(assert (not (str.in_re X (str.to_re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\u{a}"))))
(check-sat)
