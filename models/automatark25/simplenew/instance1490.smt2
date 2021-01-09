(declare-const X String)
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a")))
(check-sat)
