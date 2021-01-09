(declare-const X String)
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (not (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a"))))
(check-sat)
