(declare-const X String)
; User-Agent\x3A\dServer
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Server\x0a"))))
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (str.in.re X (re.++ (str.to.re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd\x0a"))))
; S\x3aUsers\x5cIterenetSend=User-Agent\x3A
(assert (str.in.re X (str.to.re "S:Users\x5cIterenetSend=User-Agent:\x0a")))
(check-sat)
