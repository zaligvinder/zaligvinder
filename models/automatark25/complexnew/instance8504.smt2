(declare-const X String)
; Logger\w+gdvsotuqwsg\u{2f}dxt\.hd\dovplLogtraffbest\u{2E}bizAdToolsLoggedsidesearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to_re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\u{a}"))))
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (not (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to_re "JMail") (re.+ (re.range "0" "9")) (str.to_re "GENERAL_PARAM2\u{a}")))))
(check-sat)
