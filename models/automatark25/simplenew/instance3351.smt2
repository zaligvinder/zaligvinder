(declare-const X String)
; AnalSpy\-LockedacezSubject\x3A
(assert (not (str.in.re X (str.to.re "AnalSpy-LockedacezSubject:\x0a"))))
(check-sat)
