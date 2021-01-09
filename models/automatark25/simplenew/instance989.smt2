(declare-const X String)
; /User-Agent\x3A\s+?mus[\x0d\x0a]/iH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "mus") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "/iH\x0a")))))
(check-sat)
