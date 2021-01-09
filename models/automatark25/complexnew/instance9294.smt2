(declare-const X String)
; /^\/[a-f0-9]{32}\/[0-9]$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; Iterenetbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (str.to.re "Iterenetbadurl.grandstreetinteractive.com\x0a")))
(check-sat)
