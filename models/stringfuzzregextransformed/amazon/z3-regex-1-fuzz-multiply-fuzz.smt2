(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.union (str.to.re "aaDQOxa?""@!PPw""^svbbbt<xTb") re.allchar))))
(assert (str.in.re S (re.union (re.++ (re.union (str.to.re "xS' ',JI\\#'\\\\\\<!m~:'''\x0b'LT`y9Y0'x") re.allchar) (str.to.re "&1;cGY5WJdq")) re.allchar)))
(check-sat)
