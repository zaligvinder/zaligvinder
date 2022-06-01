(declare-const X String)
; Host\u{3A}\sclvompycem\u{2f}cen\.vcn
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "clvompycem/cen.vcn\u{a}"))))
(check-sat)
