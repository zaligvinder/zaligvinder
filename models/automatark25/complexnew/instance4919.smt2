(declare-const X String)
; Uin=\s+\.htaServerTheef2trustyfiles\u{2E}comlogsHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Uin=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".htaServerTheef2trustyfiles.comlogsHost:\u{a}"))))
; /^.{27}/sR
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 27 27) re.allchar) (str.to_re "/sR\u{a}"))))
; /\u{25}3D$/Im
(assert (str.in_re X (str.to_re "/%3D/Im\u{a}")))
(check-sat)
