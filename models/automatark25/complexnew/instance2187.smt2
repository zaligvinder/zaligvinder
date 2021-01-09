(declare-const X String)
; DesktopBladeclient=wwwHello\x2Exmlns\x3A
(assert (str.in.re X (str.to.re "DesktopBladeclient=wwwHello.xmlns:\x0a")))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?"))))
(check-sat)
