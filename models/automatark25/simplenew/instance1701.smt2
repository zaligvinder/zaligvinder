(declare-const X String)
; \u{2F}bar_pl\u{2F}chk\.fcgiHWAEcom\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\u{a}"))))
(check-sat)
