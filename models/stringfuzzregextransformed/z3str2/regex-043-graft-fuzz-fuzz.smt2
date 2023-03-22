(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (str.to.re "'NrN0b'")))
(assert (= (str.to.int x) 5))
(assert (not (= x "1k_")))
(assert (not (= x "")))
(assert (not (= x ")6WBG{:/nq'\x0b'~8pT")))
(assert (not (= x "DZpqg0")))
(assert (not (= x "vkEB@|S0ib")))
(assert (not (= x "(")))
(assert (not (= x "3+Pj6NZ")))
(check-sat)
