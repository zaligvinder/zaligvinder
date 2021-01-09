(declare-const X String)
; /filename=[^\n]*\x2exml/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xml/i\x0a"))))
; NETObserveSupervisorHost\x3Awebsearch\x2Edrsnsrch\x2Ecom
(assert (str.in.re X (str.to.re "NETObserveSupervisorHost:websearch.drsnsrch.com\x13\x0a")))
; Controlsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (str.to.re "Controlsource%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
(check-sat)
