(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "Q")))
(assert (= 4 (str.len x)))
(assert (not (= x "nhnda' '1'\r'b0E*.c")))
(assert (not (= x "ab$' 'b")))
(assert (not (= x "'\n'C_-*.G'\t'ybb")))
(check-sat)
