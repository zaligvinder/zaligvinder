(declare-const X String)
; /^User-Agent\x3A[^\r\n]*TT-Bot/mi
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "TT-Bot/mi\x0a")))))
(check-sat)
