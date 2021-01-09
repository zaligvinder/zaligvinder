(declare-const X String)
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.p2g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.smil") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; http\x3A\x2F\x2Fmysearch\.dropspam\.com\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "http://mysearch.dropspam.com/index.php?tpid=\x13\x0a"))))
(check-sat)
