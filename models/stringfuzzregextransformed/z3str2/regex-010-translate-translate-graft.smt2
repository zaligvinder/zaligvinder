(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "'\\n']"))))
(assert (str.in.re x (str.to.re "'\\n']'\\n']'\\n'f")))
(assert (str.in.re x (re.* (re.* (str.to.re "'\\n']'\\n']")))))
(check-sat)
