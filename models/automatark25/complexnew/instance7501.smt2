(declare-const X String)
; /filename=[^\n]*\x2equo/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".quo/i\x0a"))))
; (\(")([0-9]*)(\")
(assert (not (str.in.re X (re.++ (str.to.re "(\x22") (re.* (re.range "0" "9")) (str.to.re "\x22\x0a")))))
(check-sat)
