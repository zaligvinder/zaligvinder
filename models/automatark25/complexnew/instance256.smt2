(declare-const X String)
; \d{1,2}d \d{1,2}h
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "d ") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "h\x0a"))))
; /filename=[^\n]*\x2esvg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".svg/i\x0a")))))
(check-sat)
