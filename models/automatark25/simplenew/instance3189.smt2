(declare-const X String)
; Host\u{3A}uploadServer3AdapupdEFErrorSubject\u{3a}
(assert (str.in_re X (str.to_re "Host:uploadServer3AdapupdEFErrorSubject:\u{a}")))
(check-sat)
