(declare-const X String)
; Shell\u{2F}Fileage\u{7D}\u{7B}Port\u{3A}upd\u{2E}lop\u{2E}com
(assert (not (str.in_re X (str.to_re "Shell/Fileage}{Port:upd.lop.com\u{a}"))))
; /filename=[^\n]*\u{2e}jp2/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jp2/i\u{a}"))))
(check-sat)
