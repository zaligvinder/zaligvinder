(declare-const X String)
; \u{2F}communicatortb[^\n\r]*\u{2F}GR.*Reportinfowhenu\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "/communicatortb") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "/GR") (re.* re.allchar) (str.to_re "Reportinfowhenu.com\u{13}\u{a}")))))
(check-sat)
