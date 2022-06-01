(declare-const X String)
; connection\sHost\u{3a}Subject\u{3A}\.bmp
(assert (str.in_re X (re.++ (str.to_re "connection") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Subject:.bmp\u{a}"))))
(check-sat)
