(declare-const X String)
; Shell\u{2F}Fileage\u{7D}\u{7B}Port\u{3A}upd\u{2E}lop\u{2E}com
(assert (not (str.in_re X (str.to_re "Shell/Fileage}{Port:upd.lop.com\u{a}"))))
(check-sat)
