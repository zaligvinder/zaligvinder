(declare-const X String)
; Host\u{3a}\s+www\s+Host\u{3A}Host\u{3A}IPAsynchaveAdToolszopabora\u{2E}infoHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:IPAsynchaveAdToolszopabora.infoHost:\u{a}"))))
(check-sat)
