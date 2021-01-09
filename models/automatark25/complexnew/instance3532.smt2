(declare-const X String)
; ^[01]?[- .]?\(?[2-9]\d{2}\)?[- .]?\d{3}[- .]?\d{4}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) (re.opt (str.to.re "(")) (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; mywayUser-Agent\x3AHost\x3ARedirector\x22body=FeaR\x25200\x2E2\x2E0\x2520Online\x3A\x2520\x5BIP_
(assert (not (str.in.re X (str.to.re "mywayUser-Agent:Host:Redirector\x22body=FeaR%200.2.0%20Online:%20[IP_\x0a"))))
; welcome\s+Host\x3A\s+ThistoIpHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "welcome") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ThistoIpHost:badurl.grandstreetinteractive.com\x0a")))))
; ^[1-9]\d?-\d{7}$
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^User-Agent\x3A[^\r\n]*malware/miH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "malware/miH\x0a"))))
(check-sat)
