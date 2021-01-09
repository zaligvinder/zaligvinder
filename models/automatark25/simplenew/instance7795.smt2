(declare-const X String)
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (not (str.in.re X (re.++ (str.to.re "<img ") (re.+ re.allchar) (str.to.re " src") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (str.to.re "\x22") (re.+ re.allchar) (str.to.re "\x22\x0a")))))
(check-sat)
