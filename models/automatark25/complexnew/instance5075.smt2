(declare-const X String)
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a")))
; /\x26tv\x3d\d\.\d\.\d{4}\.\d{4}/smiU
(assert (str.in.re X (re.++ (str.to.re "/&tv=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/smiU\x0a"))))
(check-sat)
