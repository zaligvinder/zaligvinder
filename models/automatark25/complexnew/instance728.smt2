(declare-const X String)
; /nsrjb[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in.re X (re.++ (str.to.re "/nsrjb") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; 3AFrom\x3Adddrep\x2Edudu\x2Ecomform-data\x3B\x20name=\x22pid\x22
(assert (str.in.re X (str.to.re "3AFrom:dddrep.dudu.comform-data; name=\x22pid\x22\x0a")))
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a")))
(check-sat)
