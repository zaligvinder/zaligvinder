(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.range "0" "q"))))
(assert (= 4 (str.len x)))
(assert (not (= x "")))
(assert (not (= x "00")))
(assert (not (= x "33")))
(assert (not (= x "22")))
(assert (not (= x "??")))
(assert (not (= x "")))
(assert (not (= x "44")))
(assert (not (= x "")))
(assert (not (= x "ww")))
(check-sat)
