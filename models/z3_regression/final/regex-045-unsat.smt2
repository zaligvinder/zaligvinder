(set-logic ALL)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (not (str.in_re x (re.* (str.to_re "abc") ) ) ) )
(assert (= x "abc") )


(check-sat)
(get-model)

