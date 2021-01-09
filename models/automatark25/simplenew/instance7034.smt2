(declare-const X String)
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to.re "\x0d\x0a/Hm\x0a")))))
(check-sat)
