(declare-const X String)
; ^([4]{1})([0-9]{12,15})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to.re "\x0a")))))
; <a\s*href=(.*?)[\s|>]
(assert (not (str.in.re X (re.++ (str.to.re "<a") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "href=") (re.* re.allchar) (re.union (str.to.re "|") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")))))
; /\x2eabc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.abc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
