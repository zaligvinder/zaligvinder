(declare-const X String)
; DesktopBladeclient=wwwHello\x2Exmlns\x3A
(assert (str.in.re X (str.to.re "DesktopBladeclient=wwwHello.xmlns:\x0a")))
(check-sat)
