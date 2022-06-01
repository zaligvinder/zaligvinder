(declare-const X String)
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (not (str.in_re X (re.++ (str.to_re "<img ") (re.+ re.allchar) (str.to_re " src") (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (str.to_re "\u{22}") (re.+ re.allchar) (str.to_re "\u{22}\u{a}")))))
(check-sat)
