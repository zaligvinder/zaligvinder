(declare-const X String)
; \u{2E}dat\u{2E}Toolbar\u{7D}\u{7B}OS\u{3A}toolsbar\u{2E}kuaiso\u{2E}com
(assert (not (str.in_re X (str.to_re ".dat.Toolbar}{OS:toolsbar.kuaiso.com\u{a}"))))
(check-sat)
