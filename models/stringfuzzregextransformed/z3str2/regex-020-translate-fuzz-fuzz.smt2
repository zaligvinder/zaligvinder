(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.+ (str.to.re "t?d&8|G-""pX{'R3")) (str.to.re "g")))))
(assert (= (str.to.int x) 1))
(assert (not (= x "Il@X#.Dg%&3Z'z")))
(assert (not (= x "'Hn' '{")))
(assert (not (= x "fd1(' ''\x0b'>H""<vHL2Z'\x0b'Q%'\\I/'\n'""T(>O>zg4c2L2!*>#Ym@7AfOQ>'\r'hv(fjB?/AU,0Bq3S|^aXKL^k&Hg$P")))
(check-sat)
