(declare-const X String)
; e2give\.comConnectionSpywww\u{2E}slinkyslate
(assert (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}")))
; [+-](^0.*)
(assert (str.in_re X (re.++ (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "\u{a}0") (re.* re.allchar))))
(check-sat)
