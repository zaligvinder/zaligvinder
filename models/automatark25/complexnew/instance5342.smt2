(declare-const X String)
; (\<\?php\s+.*?((\?\>)|$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<?php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "?>")))))
; (?i:[aeiou]+)\B
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a")))))
(check-sat)
