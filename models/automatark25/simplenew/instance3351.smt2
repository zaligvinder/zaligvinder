(declare-const X String)
; AnalSpy\-LockedacezSubject\u{3A}
(assert (not (str.in_re X (str.to_re "AnalSpy-LockedacezSubject:\u{a}"))))
(check-sat)
