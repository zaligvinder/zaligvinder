(declare-const X String)
; www\u{2E}webcruiser\u{2E}ccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
; ^\d{5}-\d{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
