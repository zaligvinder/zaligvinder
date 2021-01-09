(declare-const X String)
; ^[+-]?[0-9]+$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2Fxml\x2Ftoolbar\x2FExploiter
(assert (not (str.in.re X (str.to.re "/xml/toolbar/Exploiter\x0a"))))
(check-sat)
