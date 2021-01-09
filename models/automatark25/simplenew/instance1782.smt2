(declare-const X String)
; RXFilteredDmInf\x5EJMailYeah\!Online\x2521\x2521\x2521Reportsversion\x2Etxt
(assert (str.in.re X (str.to.re "RXFilteredDmInf^JMailYeah!Online%21%21%21Reportsversion.txt\x0a")))
(check-sat)
