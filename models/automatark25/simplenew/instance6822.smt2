(declare-const X String)
; function.*WEBCAM-.*User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "function") (re.* re.allchar) (str.to.re "WEBCAM-") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
(check-sat)
