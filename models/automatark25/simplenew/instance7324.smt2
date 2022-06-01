(declare-const X String)
; YWRtaW46cGFzc3dvcmQ\s+www\u{2E}alfacleaner\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.alfacleaner.com\u{a}")))))
(check-sat)
