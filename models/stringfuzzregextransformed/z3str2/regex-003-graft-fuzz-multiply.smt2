(set-logic QF_S)
(declare-const x String)
(assert (= x "''\\\\xx00bb''LL]]ddeeaacc''\\\\tt''5577cc<<;;"))
(assert (str.in.re x (str.to.re "\\\\\\\\00II&&>>VV")))
(check-sat)
