(declare-const X String)
; <a[\s]+[^>]*?.*?>([^<]+|.*?)?<\/a>
(assert (str.in.re X (re.++ (str.to.re "<a") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ">"))) (re.* re.allchar) (str.to.re ">") (re.opt (re.union (re.+ (re.comp (str.to.re "<"))) (re.* re.allchar))) (str.to.re "</a>\x0a"))))
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.j2k") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (re.++ (str.to.re "too") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a"))))
(check-sat)
