(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (str.to.re "'b0x\\'")))
(assert (= (str.len x) 5))
(assert (not (= x "1P@")))
(assert (not (= x "")))
(assert (not (= x "T'n\\'{*)o4")))
(assert (not (= x "0(u>D")))
(assert (not (= x "a0P7")))
(assert (not (= x "a")))
(assert (not (= x "vZ,6NC")))
(check-sat)
