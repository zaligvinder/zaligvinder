(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (not (str.in.re X (str.to.re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\x0a"))))
; User-Agent\x3Atwfofrfzlugq\x2feve\.qduuid=ppcdomain\x2Eco\x2EukGuardedReferer\x3AreadyLOGUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\x0a")))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (str.to.re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\x0a")))
(check-sat)
