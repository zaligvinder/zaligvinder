(declare-const X String)
; ToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "ToolbarServerserver}{Sysuptime:\x0a"))))
; /\/[a-z]{4}\.html\?h\=\d{6,7}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?h=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (not (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?")))))
; /\x3F[0-9a-z]{32}D/U
(assert (not (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a")))))
(check-sat)
