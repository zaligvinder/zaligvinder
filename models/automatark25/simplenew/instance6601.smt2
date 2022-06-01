(declare-const X String)
; \u{2F}ta\u{2F}NEWS\u{2F}password\u{3B}1\u{3B}Optix
(assert (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}")))
(check-sat)
