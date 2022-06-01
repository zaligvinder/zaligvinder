(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (str.in_re (str.++ x y) (re.* (str.to_re "abc") ) ) )





(check-sat)
(get-model)

