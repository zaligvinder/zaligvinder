(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "'\x0c'~}f*'\t'2a'wZ^ramq'\t'm?i5>yARNnW).3Aaaaaa/@!@@/' 'aaanA9$-)"))
(assert (str.in.re x (re.* (re.* (str.to.re "dde#uy=\\;' '")))))
(check-sat)
