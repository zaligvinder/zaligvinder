(declare-const X String)
; ovplEchelonUser-Agent\u{3A}User-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (str.to_re "ovplEchelonUser-Agent:User-Agent:Host:\u{a}")))
; eveocczmthmmq\u{2f}omzl\d\u{2F}asp\u{2F}offers\.asp\?
(assert (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to_re "/asp/offers.asp?\u{a}"))))
(check-sat)
