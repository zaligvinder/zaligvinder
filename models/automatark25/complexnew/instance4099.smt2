(declare-const X String)
; cyber@yahoo\x2Ecom\s+WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WindowsAttachedPalas.starware.com/dp/search?x=\x0a"))))
; /\x2epict([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pict") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(((ht|f)tp(s?))\://).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s"))))))
(check-sat)
