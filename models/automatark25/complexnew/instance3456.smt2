(declare-const X String)
; User-Agent\u{3A}\dServer
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Server\u{a}"))))
; is\w+gdvsotuqwsg\u{2f}dxt\.hd
(assert (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd\u{a}"))))
; S\u{3a}Users\u{5c}IterenetSend=User-Agent\u{3A}
(assert (str.in_re X (str.to_re "S:Users\u{5c}IterenetSend=User-Agent:\u{a}")))
(check-sat)
