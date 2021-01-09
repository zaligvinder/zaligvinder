(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (str.in.re v0 (re.++ (str.to.re "A") (re.++ (str.to.re "B") (re.++ (str.to.re "C") (str.to.re "D")))))))

(check-sat)
(get-model)
