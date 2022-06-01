(declare-const X String)
; forum=From\u{3a}comTencentTravelerBackAtTaCkExplorer
(assert (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}")))
(check-sat)
