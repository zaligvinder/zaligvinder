(declare-const X String)
; \u{7D}\u{7B}Port\u{3A}Host\u{3A}mqnqgijmng\u{2f}ojNavhelperUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}")))
; Logger\w+gdvsotuqwsg\u{2f}dxt\.hd\dovplLogtraffbest\u{2E}bizAdToolsLoggedsidesearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to_re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\u{a}"))))
; Host\u{3A}\u{25}2EResultsUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "Host:%2EResultsUser-Agent:\u{a}")))
(check-sat)
