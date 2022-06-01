(declare-const X String)
; horoscope2Cookie\u{3a}datATTENTION\u{3A}Kontiki
(assert (not (str.in_re X (str.to_re "horoscope2Cookie:datATTENTION:Kontiki\u{a}"))))
; MyHost\u{3A}toHost\u{3A}WinSessionwww\u{2e}urlblaze\u{2e}netResultHost\u{3A}
(assert (str.in_re X (str.to_re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\u{a}")))
; Host\u{3A}Desktopcargo=report\<\u{2F}title\>Host\u{3a}\.fcgiupgrade\u{2E}qsrch\u{2E}info
(assert (str.in_re X (str.to_re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\u{a}")))
(check-sat)
