(declare-const X String)
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovplLogtraffbest\x2EbizAdToolsLoggedsidesearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to.re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\x0a"))))
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (not (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2\x0a")))))
(check-sat)
