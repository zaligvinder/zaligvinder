(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.union re.allchar (str.to.re ":Hz_'\n'M;\\&+d#5l{s0DuM_fH9'\x0b'06$")))))
(assert (str.in.re S (re.union re.allchar (re.++ (str.to.re "") (re.union re.allchar (str.to.re "}wOc"))))))
(check-sat)
