(declare-const X String)
; User-Agent\u{3a}\s+www\u{2E}internet-optimizer\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.internet-optimizer.com\u{a}")))))
; 666Host\u{3a}WEBCAM-Host\u{3a}
(assert (not (str.in_re X (str.to_re "666Host:WEBCAM-Host:\u{a}"))))
(check-sat)
