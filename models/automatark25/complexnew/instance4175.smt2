(declare-const X String)
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovpl\dHOST\x3AUser-Agent\x3AURLUBAgent%3fSchwindlerurl=Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to.re "ovpl") (re.range "0" "9") (str.to.re "HOST:User-Agent:URLUBAgent%3fSchwindlerurl=Host:\x0a")))))
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (str.in.re X (str.to.re "TROJAN-Owner:User-Agent:%3fTs2/\x0a")))
(check-sat)
