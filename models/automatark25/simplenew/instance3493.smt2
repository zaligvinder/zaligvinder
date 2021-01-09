(declare-const X String)
; \x2Fxml\x2Ftoolbar\x2F
(assert (str.in.re X (str.to.re "/xml/toolbar/\x0a")))
(check-sat)
