(declare-const X String)
; User-Agent\x3A\s+community\d+
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; Logger\w+gdvsotuqwsg\x2fdxt\.hd\dovplLogtraffbest\x2EbizAdToolsLoggedsidesearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd") (re.range "0" "9") (str.to.re "ovplLogtraffbest.bizAdToolsLoggedsidesearch.dropspam.com\x0a")))))
(check-sat)
