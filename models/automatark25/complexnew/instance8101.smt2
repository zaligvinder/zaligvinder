(declare-const X String)
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "ver") (re.range "0" "9") (str.to.re "Robert") (re.range "0" "9") (str.to.re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\x0a")))))
; ^\d{5}(\-)(\d{3})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (str.to.re "\x0a"))))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:\x0a")))))
(check-sat)
