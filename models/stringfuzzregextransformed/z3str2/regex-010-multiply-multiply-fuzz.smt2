(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re """(tWaa*[/|b"))))
(assert (str.in.re x (re.+ (str.to.re "a/s[oY'\x0c'*^abbbab"))))
(assert (str.in.re x (re.+ (str.to.re "aaabbt6'\n'we~t+!'r'\n'j*>aabbb1D|=SRrn+8qN]#ad)'\t'p~i'\r'\\\\eN#?wiW7buAmvHC'Erc"))))
(check-sat)
