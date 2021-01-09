(declare-const X String)
; [0-9]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; YWRtaW46cGFzc3dvcmQ\s+www\x2Ealfacleaner\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.alfacleaner.com\x0a")))))
; NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecn
(assert (str.in.re X (re.++ (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0aHost:HWAEname.cnnic.cn\x0a"))))
; /^\/[A-Z]{6}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to.re "/U\x0a"))))
(check-sat)
