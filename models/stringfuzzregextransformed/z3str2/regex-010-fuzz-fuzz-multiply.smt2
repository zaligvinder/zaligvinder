(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "??xx"))))
(assert (str.in.re x (re.* (str.to.re "yy``bb"))))
(assert (str.in.re x (re.+ (str.to.re "aa77[[--ppEE!!hh''))qq++''\\\\xx00cc''""""""""ZZbbUU##OO66@@++==**cc"))))
(check-sat)
