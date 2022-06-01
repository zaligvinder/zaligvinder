(declare-const X String)
; sponsor2\.ucmore\.comUser-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "sponsor2.ucmore.comUser-Agent:User-Agent:\u{a}"))))
; ConnectionUser-Agent\u{3A}\swww\.fast-finder\.com
(assert (str.in_re X (re.++ (str.to_re "ConnectionUser-Agent:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com\u{a}"))))
(check-sat)
