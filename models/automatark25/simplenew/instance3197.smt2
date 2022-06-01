(declare-const X String)
; Uin=\s+\.htaServerTheef2trustyfiles\u{2E}comlogsHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Uin=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".htaServerTheef2trustyfiles.comlogsHost:\u{a}")))))
(check-sat)
