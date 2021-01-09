(declare-const X String)
; /User-Agent\x3a\x20Agent\d{5,9}/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: Agent") ((_ re.loop 5 9) (re.range "0" "9")) (str.to.re "/Hi\x0a")))))
(check-sat)
