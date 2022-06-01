(declare-const X String)
; [0-9]+
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; YWRtaW46cGFzc3dvcmQ\s+www\u{2E}alfacleaner\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.alfacleaner.com\u{a}")))))
; NETObserve\d+Host\u{3a}ohgdhkzfhdzo\u{2f}uwpOK\r\nHost\u{3A}HWAEname\u{2e}cnnic\u{2e}cn
(assert (str.in_re X (re.++ (str.to_re "NETObserve") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cn\u{a}"))))
; /^\/[A-Z]{6}$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 6 6) (re.range "A" "Z")) (str.to_re "/U\u{a}"))))
(check-sat)
