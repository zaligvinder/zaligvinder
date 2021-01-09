(declare-const X String)
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a")))
(check-sat)
