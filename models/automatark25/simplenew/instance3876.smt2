(declare-const X String)
; pgwtjgxwthx\u{2f}byb\.xkyLOGurl=enews\u{2E}earthlink\u{2E}net
(assert (not (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}"))))
(check-sat)
