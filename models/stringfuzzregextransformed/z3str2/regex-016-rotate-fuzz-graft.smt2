(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "295"""""))))
(assert (= (str.len x) 22))
(assert (not (= x "]{a'\\x0b'i<rd12uq'\\r'#YMd")))
(assert (not (= x "0]'-)UfTr""""k,D1P$k@""""abs'WR!D1'q""""31B5@ME;'' ''")))
(check-sat)
