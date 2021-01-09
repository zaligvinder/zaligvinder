(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\x3C\x2Fchat\x3E
(assert (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.* re.allchar) (str.to.re "www.klikvipsearch.com") (re.* re.allchar) (str.to.re "</chat>\x0a"))))
; /^[^\s]*\x0D\x0A$/P
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0d\x0a/P\x0a")))))
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (not (str.in.re X (str.to.re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\x0a"))))
(check-sat)
