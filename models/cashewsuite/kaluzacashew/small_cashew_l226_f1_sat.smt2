(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (str.in_re v0 (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (str.to_re "D")))))))

(check-sat)
(get-model)
