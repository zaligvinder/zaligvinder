(declare-const X String)
; Address\u{3A}\s+SbAtsHTTP_RAT_Subject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Address:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAtsHTTP_RAT_Subject:\u{a}")))))
(check-sat)
