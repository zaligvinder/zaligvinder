(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "ab$!Pd") (str.to.re "12")))))
(assert (= 9 (str.len x)))
(assert (not (= x "w'{:iDc~9^bcTE;>q)23b1b}P{\\\\\\\\=0;d")))
(assert (not (= x "a{8o+suVbaE$!dC)dG(q:).AUbd1non4;")))
(check-sat)
