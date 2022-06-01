(declare-const X String)
; Logs.*with\u{3A}\s+OnlineServer\u{3a}Yeah\!
(assert (str.in_re X (re.++ (str.to_re "Logs") (re.* re.allchar) (str.to_re "with:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OnlineServer:Yeah!\u{a}"))))
(check-sat)
