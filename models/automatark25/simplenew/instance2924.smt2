(declare-const X String)
; DownloadDmInf\u{5E}infoSimpsonUser-Agent\u{3A}Client
(assert (str.in_re X (str.to_re "DownloadDmInf^infoSimpsonUser-Agent:Client\u{a}")))
(check-sat)
