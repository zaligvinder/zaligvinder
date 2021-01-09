(declare-const X String)
; daosearch\x2EcomSubject\x3A
(assert (not (str.in.re X (str.to.re "daosearch.comSubject:\x0a"))))
(check-sat)
