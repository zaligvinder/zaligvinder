(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "ww!!=={{mmNNaavvkk3366bbssEE!!&&??jj77VV") re.allchar)))
(assert (not (str.in.re S (re.++ (re.union (re.++ (str.to.re "hh''nn''yyFFwwWWrr''' '' '''ii''\\\\tt''00<<ii((") re.allchar) (str.to.re "**")) re.allchar))))
(check-sat)
