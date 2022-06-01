(declare-const X String)
; (^(\d{3}.\d{3}.\d{3}-\d{2})|(\d{11})$)
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 11 11) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; \u{2F}bar_pl\u{2F}chk_bar\.fcgiUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiUser-Agent:\u{a}")))
(check-sat)
