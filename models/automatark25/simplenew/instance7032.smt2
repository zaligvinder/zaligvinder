(declare-const X String)
; Host\x3a\s+www\s+Host\x3AHost\x3AIPAsynchaveAdToolszopabora\x2EinfoHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:IPAsynchaveAdToolszopabora.infoHost:\x0a")))))
(check-sat)
