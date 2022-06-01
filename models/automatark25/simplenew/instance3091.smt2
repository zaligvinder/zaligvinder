(declare-const X String)
; Activityfilename=\u{22}StarLoggerDAWeb-Mail
(assert (not (str.in_re X (str.to_re "Activityfilename=\u{22}StarLoggerDAWeb-Mail\u{a}"))))
(check-sat)
