(declare-const X String)
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a")))
; ^[\d]{5}[-\s]{1}[\d]{3}[-\s]{1}[\d]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3a.*ver\dRobert\dDmInf\x5EinfoSimpsonUser-Agent\x3AClientwww\x2Einternet-optimizer\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "ver") (re.range "0" "9") (str.to.re "Robert") (re.range "0" "9") (str.to.re "DmInf^infoSimpsonUser-Agent:Clientwww.internet-optimizer.com\x0a")))))
; 3A\d+Host\x3AHWAEUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.range "0" "9")) (str.to.re "Host:HWAEUser-Agent:\x0a")))))
(check-sat)
