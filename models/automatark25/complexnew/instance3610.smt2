(declare-const X String)
; /filename=[^\n]*\u{2e}xml/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xml/i\u{a}"))))
; NETObserveSupervisorHost\u{3A}websearch\u{2E}drsnsrch\u{2E}com
(assert (str.in_re X (str.to_re "NETObserveSupervisorHost:websearch.drsnsrch.com\u{13}\u{a}")))
; Controlsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (str.to_re "Controlsource%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
(check-sat)
