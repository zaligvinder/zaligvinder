(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.union re.allchar (str.to.re "`\\E'\n'thM*'\x0c'")))))
(assert (str.in.re S (re.union re.allchar (re.union (str.to.re "-v") (re.++ re.allchar (str.to.re "MMM"))))))
(check-sat)
