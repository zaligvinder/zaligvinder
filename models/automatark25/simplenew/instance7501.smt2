(declare-const X String)
; /^User-Agent\x3A[^\r\n]*beagle_beagle/smiH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "beagle_beagle/smiH\x0a"))))
(check-sat)
