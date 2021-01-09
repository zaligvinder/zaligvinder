(declare-const X String)
; /^\/[a-f0-9]{32}\.eot$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".eot/U\x0a")))))
; /filename=[^\n]*\x2exul/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xul/i\x0a"))))
(check-sat)
