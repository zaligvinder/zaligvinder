(declare-const X String)
; (^\d{5}\x2D\d{3}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")))))
; <.*\b(bgcolor\s*=\s*[\"|\']*(\#\w{6})[\"|\']*).*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* re.allchar) (re.* re.allchar) (str.to.re ">\x0abgcolor") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x22") (str.to.re "|") (str.to.re "'"))) (re.* (re.union (str.to.re "\x22") (str.to.re "|") (str.to.re "'"))) (str.to.re "#") ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; ^([0-7]{3})$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "7")) (str.to.re "\x0a")))))
(check-sat)
