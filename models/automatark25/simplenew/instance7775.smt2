(declare-const X String)
; Strip-Player.*MyAgent.*\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "Strip-Player\x1b") (re.* re.allchar) (str.to.re "MyAgent") (re.* re.allchar) (str.to.re "/newsurfer4/\x0a"))))
(check-sat)
