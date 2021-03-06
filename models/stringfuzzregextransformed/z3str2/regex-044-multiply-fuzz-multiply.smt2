(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.range "0" ";"))))
(assert (= 6 (str.to.int x)))
(assert (not (= x "..==")))
(assert (not (= x "")))
(assert (not (= x ">>2233")))
(assert (not (= x "22JJNN")))
(assert (not (= x "hhpp88")))
(assert (not (= x """""""""rrII::")))
(assert (not (= x "4444")))
(assert (not (= x "9999")))
(assert (not (= x "$$")))
(check-sat)
