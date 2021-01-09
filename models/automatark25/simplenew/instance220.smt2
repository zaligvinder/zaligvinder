(declare-const X String)
; logsFictionalReporterCookieUser-Agent\x3A
(assert (str.in.re X (str.to.re "logsFictionalReporterCookieUser-Agent:\x0a")))
(check-sat)
