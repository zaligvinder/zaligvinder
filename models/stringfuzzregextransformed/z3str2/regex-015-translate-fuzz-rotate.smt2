(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "t'GP_'\\x0c'n'p'\\n'8*pi5"))))
(assert (str.in.re y (re.* (re.+ (str.to.re "AS\\\\JV'\\t'Iwmdf12")))))
(assert (= (str.len x) 5))
(assert (= (str.len y) 9))
(check-sat)
