(declare-const X String)
; eveocczmthmmq\u{2f}omzl\d\u{2F}asp\u{2F}offers\.asp\?
(assert (not (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}")))))
(check-sat)
