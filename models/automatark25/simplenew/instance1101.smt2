(declare-const X String)
; www\.iggsey\.com\sX-Mailer\u{3a}Computeron\u{3A}com\u{3E}2\u{2E}41
(assert (not (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}Computeron:com>2.41\u{a}")))))
(check-sat)
