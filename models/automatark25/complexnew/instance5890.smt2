(declare-const X String)
; version.*Host\u{3a}\s+iWonHost\u{3a}pjpoptwql\u{2f}rlnj
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "iWonHost:pjpoptwql/rlnj\u{a}")))))
; (facebook|twitter|youtube)
(assert (str.in_re X (re.++ (re.union (str.to_re "facebook") (str.to_re "twitter") (str.to_re "youtube")) (str.to_re "\u{a}"))))
(check-sat)
