(declare-const X String)
; /filename=[^\n]*\x2emid/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mid/i\x0a")))))
(check-sat)
