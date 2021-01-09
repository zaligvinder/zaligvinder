(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (not (str.in.re X (str.to.re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\x0a"))))
(check-sat)
