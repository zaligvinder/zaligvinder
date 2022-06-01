(declare-const X String)
; User-Agent\u{3A}User-Agent\u{3A}www\.take5bingo\.comUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:www.take5bingo.com\u{1b}User-Agent:\u{a}")))
(check-sat)
