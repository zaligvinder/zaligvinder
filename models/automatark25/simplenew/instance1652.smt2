(declare-const X String)
; User-Agent\u{3A}BetaWordixqshv\u{2f}qzccsServer\u{0}
(assert (not (str.in_re X (str.to_re "User-Agent:BetaWordixqshv/qzccsServer\u{0}\u{a}"))))
(check-sat)
