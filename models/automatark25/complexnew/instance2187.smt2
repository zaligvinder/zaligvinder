(declare-const X String)
; DesktopBladeclient=wwwHello\u{2E}xmlns\u{3A}
(assert (str.in_re X (str.to_re "DesktopBladeclient=wwwHello.xmlns:\u{a}")))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (str.in_re X (re.++ (str.to_re ".\u{a}") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "?"))))
(check-sat)
