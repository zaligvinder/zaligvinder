(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "'' '''' '''' '''' '''' '''' '''' '''' '''' ''"))
(assert (str.in.re x (re.* (re.* (str.to.re "L'b0x\\'R")))))
(check-sat)
