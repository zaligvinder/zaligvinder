(declare-const X String)
; YWRtaW46cGFzc3dvcmQ[^\n\r]*DA[^\n\r]*Host\u{3A}www\u{2E}e-finder\u{2E}cc
(assert (str.in_re X (re.++ (str.to_re "YWRtaW46cGFzc3dvcmQ") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "DA") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:www.e-finder.cc\u{a}"))))
(check-sat)
