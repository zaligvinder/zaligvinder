(declare-const X String)
; \x2Fxml\x2Ftoolbar\x2FExploiter
(assert (not (str.in.re X (str.to.re "/xml/toolbar/Exploiter\x0a"))))
(check-sat)
