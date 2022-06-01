(declare-const X String)
; \$(\d*)??,??(\d*)??,??(\d*)\.(\d*)
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to_re ",")) (re.opt (re.* (re.range "0" "9"))) (re.opt (str.to_re ",")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; User-Agent\u{3A}User-Agent\u{3A}www\.take5bingo\.comUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:www.take5bingo.com\u{1b}User-Agent:\u{a}")))
; \u{2F}rss\d+answer\sHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "answer") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:\u{a}"))))
(check-sat)
