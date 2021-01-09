(declare-const X String)
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "ver") (re.range "0" "9") (str.to.re "Robert") (re.range "0" "9") (str.to.re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\x0a")))))
(check-sat)
