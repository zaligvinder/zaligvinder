(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.union (str.to.re "j*'\x0c'93/ySC'\n'N6!U@:'\r'bbzTub") re.allchar))))
(assert (str.in.re S (re.++ (str.to.re "a""Ivaaa") re.allchar)))
(check-sat)
