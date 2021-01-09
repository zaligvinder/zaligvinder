(declare-const X String)
; [\dA-Za-z]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; \x2Fxml\x2Ftoolbar\x2F
(assert (str.in.re X (str.to.re "/xml/toolbar/\x0a")))
(check-sat)
