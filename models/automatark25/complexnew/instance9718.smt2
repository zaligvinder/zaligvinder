(declare-const X String)
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a")))
; [+-](^0.*)
(assert (str.in.re X (re.++ (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "\x0a0") (re.* re.allchar))))
(check-sat)
