(declare-const X String)
; Peer\s+CodeguruBrowser.*UNSEEN\u{22}Host\u{3A}hirmvtg\u{2f}ggqh\.kqh
(assert (str.in_re X (re.++ (str.to_re "Peer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowser") (re.* re.allchar) (str.to_re "UNSEEN\u{22}Host:hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
(check-sat)
