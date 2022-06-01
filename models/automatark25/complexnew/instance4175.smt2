(declare-const X String)
; Logger\w+gdvsotuqwsg\u{2f}dxt\.hd\dovpl\dHOST\u{3A}User-Agent\u{3A}URLUBAgent%3fSchwindlerurl=Host\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to_re "ovpl") (re.range "0" "9") (str.to_re "HOST:User-Agent:URLUBAgent%3fSchwindlerurl=Host:\u{a}")))))
; TROJAN-Owner\u{3A}User-Agent\u{3a}%3fTs2\u{2F}
(assert (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}")))
(check-sat)
