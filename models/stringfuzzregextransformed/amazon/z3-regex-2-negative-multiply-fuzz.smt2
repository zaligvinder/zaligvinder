(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "CN6KFb15(']Gaab'\n'<-:,Snu\\Wmz^Rh") re.allchar)))
(assert (not (str.in.re S (re.union (re.union (re.union (str.to.re "IgS!s>""(8a<;e") re.allchar) (str.to.re ".bHf}b")) re.allchar))))
(check-sat)
