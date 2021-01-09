(declare-const X String)
; /filename=[^\n]*\x2erat/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rat/i\x0a")))))
; ^\d{1,3}\.\d{1,4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x2Fxml\x2Ftoolbar\x2FExploiter
(assert (not (str.in.re X (str.to.re "/xml/toolbar/Exploiter\x0a"))))
(check-sat)
