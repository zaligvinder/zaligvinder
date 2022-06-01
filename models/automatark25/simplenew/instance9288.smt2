(declare-const X String)
; \.myway\.comToolbarUI2Host\u{3A}Subject\u{3A}toxbqyosoe\u{2f}cpvm
(assert (not (str.in_re X (str.to_re ".myway.com\u{1b}ToolbarUI2Host:Subject:toxbqyosoe/cpvm\u{a}"))))
(check-sat)
