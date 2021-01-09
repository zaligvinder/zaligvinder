(declare-const X String)
; NETObserveSupervisorHost\x3Awebsearch\x2Edrsnsrch\x2Ecom
(assert (not (str.in.re X (str.to.re "NETObserveSupervisorHost:websearch.drsnsrch.com\x13\x0a"))))
(check-sat)
