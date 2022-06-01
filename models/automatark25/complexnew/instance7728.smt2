(declare-const X String)
; ^(1[89]|[2-9]\d)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "1") (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; eveocczmthmmq\u{2f}omzlHello\u{2E}\u{2F}asp\u{2F}offers\.asp\?
(assert (str.in_re X (str.to_re "eveocczmthmmq/omzlHello./asp/offers.asp?\u{a}")))
(check-sat)
