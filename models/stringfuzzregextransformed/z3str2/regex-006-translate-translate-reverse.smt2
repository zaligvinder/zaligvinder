(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "'t\\'F0LZ't\\''r\\'!'t\\'F0LZ't\\''r\\'!"))
(assert (str.in.re x (re.* (re.* (str.to.re "'t\\'F0LZ't\\''r\\'!")))))
(check-sat)
