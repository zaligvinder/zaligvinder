(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.+ (str.to.re "")) (str.to.re "\\ac\\JI;Rb1v'")))))
(assert (= (str.to.int x) 16))
(assert (not (= x "'[#:L'' ''{#")))
(assert (not (= x "H}@|Pbat'8")))
(assert (not (= x "N=b""!g,g5yHb]")))
(check-sat)
