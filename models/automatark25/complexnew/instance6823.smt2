(declare-const X String)
; horoscope2Cookie\x3adatATTENTION\x3AKontiki
(assert (not (str.in.re X (str.to.re "horoscope2Cookie:datATTENTION:Kontiki\x0a"))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (str.in.re X (str.to.re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\x0a")))
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (str.in.re X (str.to.re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\x0a")))
(check-sat)
