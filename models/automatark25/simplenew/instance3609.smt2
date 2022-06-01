(declare-const X String)
; NETObserveSupervisorHost\u{3A}websearch\u{2E}drsnsrch\u{2E}com
(assert (not (str.in_re X (str.to_re "NETObserveSupervisorHost:websearch.drsnsrch.com\u{13}\u{a}"))))
(check-sat)
