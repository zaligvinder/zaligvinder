(declare-const X String)
; /\u{2e}hlp([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.hlp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\u{3A}ServerHost\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:ServerHost:\u{a}"))))
(check-sat)
