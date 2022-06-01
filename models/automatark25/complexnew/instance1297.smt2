(declare-const X String)
; /\u{2E}sum([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.sum") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; eveocczmthmmq\u{2f}omzlHello\u{2E}\u{2F}asp\u{2F}offers\.asp\?
(assert (not (str.in_re X (str.to_re "eveocczmthmmq/omzlHello./asp/offers.asp?\u{a}"))))
(check-sat)
