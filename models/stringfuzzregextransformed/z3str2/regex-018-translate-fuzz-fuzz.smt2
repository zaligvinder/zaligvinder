(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "6") (str.to.re "")))))
(assert (= 0 (str.len x)))
(assert (not (= x "t}d!y]~['Iu'\r'/'\r''<f' '+~w3cmB")))
(check-sat)
