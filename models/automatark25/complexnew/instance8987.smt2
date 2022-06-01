(declare-const X String)
; xbqyosoe\u{2f}cpvmviewComponentisrelated\u{2E}yok\u{2E}com
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}"))))
; Host\u{3A}\s+\u{2F}NFO\u{2C}RegisteredDeletingadfsgecoiwnf
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,RegisteredDeletingadfsgecoiwnf\u{1b}\u{a}"))))
(check-sat)
