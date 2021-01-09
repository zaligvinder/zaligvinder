(declare-const X String)
; for\sinternalcyber@yahoo\x2EcomHeadersRedirectionHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "for") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirectionHost:\x0a")))))
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (str.in.re X (re.++ (str.to.re "<a") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ">"))) (re.* re.allchar) (str.to.re ">") (re.opt (re.union (re.+ (re.comp (str.to.re "<"))) (re.* re.allchar))) (str.to.re "</a>\x0a"))))
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.smil") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mpg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
