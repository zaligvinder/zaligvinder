(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "bbbaaaIRVa")))))
(assert (str.in.re S (re.++ re.allchar (re.union (str.to.re "bbbbp") (re.++ re.allchar (str.to.re "l?aaaseoN5"))))))
(check-sat)
