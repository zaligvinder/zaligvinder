(declare-const X String)
; /^\/[a-f0-9]{32}\/[0-9]$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") (re.range "0" "9") (str.to_re "/Ui\u{a}")))))
; Iterenetbadurl\u{2E}grandstreetinteractive\u{2E}com
(assert (str.in_re X (str.to_re "Iterenetbadurl.grandstreetinteractive.com\u{a}")))
(check-sat)
