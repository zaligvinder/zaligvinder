(declare-const X String)
; EFError.*\u{2F}cs\u{2F}pop4\u{2F}[^\n\r]*
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; &
(assert (str.in_re X (str.to_re "&\u{a}")))
; Handyst=ClassStopperHost\u{3A}SpamBlockerUtility
(assert (not (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}"))))
(check-sat)
