(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.range ">" "G"))))
(assert (= (str.len x) 1))
(assert (not (= x "")))
(assert (not (= x "")))
(assert (not (= x "3")))
(assert (not (= x "'\r'")))
(assert (not (= x "8")))
(assert (not (= x "")))
(assert (not (= x "5")))
(assert (not (= x "")))
(assert (not (= x "7")))
(check-sat)
