(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)

(assert (= (str.len v0) 0))
(assert (= v1 (str.++ v0 v2)))
(assert (not (str.in.re v2 (re.++ (str.to.re "A") (re.++ (str.to.re "A") (re.++ (str.to.re "B") (re.++ (str.to.re "C") (re.++ (str.to.re "D") (re.++ (str.to.re "E") (str.to.re "F"))))))))))

(check-sat)
(get-model)
