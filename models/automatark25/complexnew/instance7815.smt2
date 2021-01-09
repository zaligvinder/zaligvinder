(declare-const X String)
; /\x2eswf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.swf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^((http|https|ftp|ftps)+(:\/\/))?(www\.)?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.+ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp") (str.to.re "ftps"))) (str.to.re "://"))) (re.opt (str.to.re "www.")) (str.to.re "\x0a")))))
(check-sat)
