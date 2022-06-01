(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)

(assert (= (str.len v0) 0))
(assert (= v1 (str.++ v0 v2)))
(assert (not (str.in_re v2 (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "F") (re.++ (str.to_re "G") (str.to_re "H")))))))))))

(check-sat)
(get-model)
