(declare-const X String)
; /\u{2e}exe([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.exe") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; t=ProtoUser-Agent\u{3A}quick\u{2E}qsrch\u{2E}com
(assert (not (str.in_re X (str.to_re "t=ProtoUser-Agent:quick.qsrch.com\u{a}"))))
(check-sat)
