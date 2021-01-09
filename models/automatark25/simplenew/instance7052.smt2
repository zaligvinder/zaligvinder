(declare-const X String)
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (str.in.re X (re.++ (str.to.re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hd\x0a"))))
(check-sat)
