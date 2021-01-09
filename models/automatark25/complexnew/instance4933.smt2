(declare-const X String)
; Subject\x3AEnTrYExplorer\x2APORT2\x2AHost\x3A
(assert (str.in.re X (str.to.re "Subject:EnTrYExplorer*PORT2*Host:\x0a")))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in.re X (str.to.re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\x0a"))))
(check-sat)
