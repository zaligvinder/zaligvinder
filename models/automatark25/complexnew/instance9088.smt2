(declare-const X String)
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a")))
; /^\/[a-z0-9]{32}\/[a-z0-9]{32}\.jnlp/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a")))))
(check-sat)
