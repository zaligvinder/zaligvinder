(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "5kpCJI^aa?^O*k|aaaaa5}&\\+'\r'-}'\x0c'>7' ':NoXkZ=Caa"))
(assert (str.in.re x (re.* (str.to.re "#fc6sR'\x0b':%sva$W'\n'<i%%^+Q>)H"))))
(check-sat)
