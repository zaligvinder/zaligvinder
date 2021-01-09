(declare-const X String)
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (str.in.re X (str.to.re "ServerAgentX-Mailer:\x13TencentTraveler\x0a")))
; Host\x3AHost\x3Abody=\x2521\x2521\x2521Optix
(assert (str.in.re X (str.to.re "Host:Host:body=%21%21%21Optix\x13\x0a")))
; ^\s*(\d{0,2})(\.?(\d*))?\s*\%?\s*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (re.opt (str.to.re ".")) (re.* (re.range "0" "9")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "%")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; ^[+]447\d{9}$
(assert (str.in.re X (re.++ (str.to.re "+447") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\x3C\x2Fchat\x3E
(assert (not (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.* re.allchar) (str.to.re "www.klikvipsearch.com") (re.* re.allchar) (str.to.re "</chat>\x0a")))))
(check-sat)
