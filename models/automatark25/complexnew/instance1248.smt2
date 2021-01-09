(declare-const X String)
; <img .+ src[ ]*=[ ]*\"(.+)\"
(assert (str.in.re X (re.++ (str.to.re "<img ") (re.+ re.allchar) (str.to.re " src") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (str.to.re "\x22") (re.+ re.allchar) (str.to.re "\x22\x0a"))))
; ^[\d]{5}[-\s]{1}[\d]{3}[-\s]{1}[\d]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
