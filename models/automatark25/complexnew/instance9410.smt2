(declare-const X String)
; ^\d*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; shprrprt-cs-Pre\u{2F}ta\u{2F}NEWS\u{2F}
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
(check-sat)
