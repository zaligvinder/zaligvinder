(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "))!!bb") re.allchar))))
(assert (str.in.re S (re.++ (re.++ (re.++ (str.to.re "BB^^zz//(([[[[\\\\\\\\''TTEE22ssbb__{{") re.allchar) (str.to.re "~~NN//TT")) re.allchar)))
(check-sat)
