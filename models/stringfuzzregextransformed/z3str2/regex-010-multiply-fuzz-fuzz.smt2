(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "'\x0c'2BXj|o"))))
(assert (str.in.re x (re.* (str.to.re "'\\nFf-Fk7Hn' '9LK&P'\t'HAl4Ij8OwbtOS~:&jd~>&5g1P8@D]9nSp9V\\6cZ/,veZ'\x0b'`""DnZ;*Xug|2G?}'\t'1]Fu`t+b'[Ebh5=\\kW^H2nJ""nbd4X8xBLu@?3[1V*R6iO?\\$6Gf=pj(u_' '8Kn2' ',hr`3@g}{u~~:'\x0c'L'\t'#wM%n4Ypa%3Qp.0Ij'\r'(' '4tC9QI6gMaWf]RPtxpxs'~5]s}r#'\x0b'bkGXK`7#bdyQ2*CmEp%obc')b/iDl_kWM&Uv)+D'\x0c'$Q[)hmum~1-mc?>3,C"))))
(assert (str.in.re x (re.+ (str.to.re "z--'R' '''\x0c''\\8U6'\r']sd`t!vHh.yix-uW<v&#D{>B2hbO'\x0b'U_3rDU(6Tazl3H+{{'\r'Rt'\x0c'j'\\[!RLN%_pSZPF8{ma}m.P8NlcHH-T' 'f^Fm!J]UI7"))))
(check-sat)
