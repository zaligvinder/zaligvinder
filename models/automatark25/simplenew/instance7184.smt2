(declare-const X String)
; Host\u{3A}\sToolbarServerserver\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "ToolbarServerserver}{Sysuptime:\u{a}")))))
(check-sat)
