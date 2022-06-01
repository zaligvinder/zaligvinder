(declare-const X String)
; InformationSubject\u{3A}SpynovabyBlacksnprtz\u{7C}dialnoSearch
(assert (not (str.in_re X (str.to_re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\u{a}"))))
; User-Agent\u{3A}twfofrfzlugq\u{2f}eve\.qduuid=ppcdomain\u{2E}co\u{2E}ukGuardedReferer\u{3A}readyLOGUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\u{a}")))
; pgwtjgxwthx\u{2f}byb\.xkyLOGurl=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (str.to_re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\u{a}")))
(check-sat)
