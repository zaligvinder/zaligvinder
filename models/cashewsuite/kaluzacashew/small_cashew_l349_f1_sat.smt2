(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)

(assert (<= (str.len v0) 14))
(assert (= v0 v0))
(assert (= v1 (str.++ v0 v2)))
(assert (= v3 (str.++ v4 v1)))
(assert (not (str.in_re v4 (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (str.to_re "D")))))))
(assert (str.in_re v0 (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (str.to_re "D"))))))

(check-sat)
(get-model)
