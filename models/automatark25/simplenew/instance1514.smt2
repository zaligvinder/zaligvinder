(declare-const X String)
; DesktopBladeclient=wwwHello\u{2E}xmlns\u{3A}
(assert (str.in_re X (str.to_re "DesktopBladeclient=wwwHello.xmlns:\u{a}")))
(check-sat)
