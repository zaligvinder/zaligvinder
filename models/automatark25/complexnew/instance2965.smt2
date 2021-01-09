(declare-const X String)
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (str.in.re X (re.++ (str.to.re "<img ") (re.+ re.allchar) (str.to.re " src") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (str.to.re "\x22") (re.+ re.allchar) (str.to.re "\x22\x0a"))))
; doarauzeraqf\x2fvvv\.ul
(assert (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a")))
(check-sat)
