(declare-const X String)
; /filename=[^\n]*\x2eemf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a")))))
; \b4[0-9]\b
(assert (str.in.re X (re.++ (str.to.re "4") (re.range "0" "9") (str.to.re "\x0a"))))
; /(A|B|AB|O)[+-]/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "A") (str.to.re "B") (str.to.re "AB") (str.to.re "O")) (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "/\x0a"))))
(check-sat)
