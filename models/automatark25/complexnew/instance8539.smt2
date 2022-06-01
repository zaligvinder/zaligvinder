(declare-const X String)
; ^[+-]?[0-9]+$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; \u{2F}xml\u{2F}toolbar\u{2F}Exploiter
(assert (not (str.in_re X (str.to_re "/xml/toolbar/Exploiter\u{a}"))))
(check-sat)
