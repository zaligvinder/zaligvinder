(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "g!ii"))))
(assert (str.in.re x (re.* (str.to.re "LUZn92:-h.o"))))
(assert (str.in.re x (re.* (str.to.re "R0xNm`38Rq6&`+JgHO,B""A#'\x0c'u6'\n'#xa)wd:B90m5s|>:%\\Yc(NOv2E%Kn'\x0c'%l{)}e>]}'\x0b'dz'\r'nle_#cG'CM#$@;yV[}lU(b`'\r'a8t&""v(bOM9qc}tpOc`D<GN(0[IYTo0+`IRu8@'\t'Ur'\r'dHuwi=0ANO"))))
(check-sat)
