(declare-const X String)
; /User-Agent\u{3a}\u{20}Agent\d{5,9}/Hi
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to_re "/Hi\u{a}")))))
(check-sat)
