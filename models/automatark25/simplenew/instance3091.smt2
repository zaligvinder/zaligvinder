(declare-const X String)
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (not (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a"))))
(check-sat)
