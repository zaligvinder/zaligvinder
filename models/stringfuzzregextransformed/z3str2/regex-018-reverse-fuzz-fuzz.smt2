(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "B'\x0c'") (str.to.re "3RD")))))
(assert (= 0 (str.len x)))
(assert (not (= x "R]8.Hugr1i*(-N' '{R=MXJx' '5;k65,'\x0c''\t'0?K,pV#82DDcoDa!s{S'0Elf>2.$'\x0c'\\\\\\'f'#M9F#fQY6x")))
(check-sat)
