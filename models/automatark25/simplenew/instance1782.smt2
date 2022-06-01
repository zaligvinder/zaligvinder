(declare-const X String)
; RXFilteredDmInf\u{5E}JMailYeah\!Online\u{25}21\u{25}21\u{25}21Reportsversion\u{2E}txt
(assert (str.in_re X (str.to_re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\u{a}")))
(check-sat)
