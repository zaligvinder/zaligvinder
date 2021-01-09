(declare-const X String)
; /\x2exsl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xsl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^\d+([^.,])?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re ","))) (str.to.re "\x0a"))))
(check-sat)
