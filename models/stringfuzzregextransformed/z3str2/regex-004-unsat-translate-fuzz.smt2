(set-logic QF_S)
(declare-const x String)
(assert (= x "6MMZ'\x0c'?XKdi'\x0b'Fg{|UhrCN_y'\n''\n'8'\x0b''|'\\fRTDo/g' 'B""-30b"))
(assert (str.in.re x (re.++ (re.* (str.to.re ")XJ' 'jO!3i?ri+")) (re.+ (str.to.re "G>L'0?'\x0c'#Z58f5Q' ''\r'?1")))))
(check-sat)
