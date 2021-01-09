(declare-const X String)
; /\x2eclass([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.class") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; NSIS_DOWNLOAD.*User-Agent\x3A\s+gpstool\x2eglobaladserver\x2ecom
(assert (str.in.re X (re.++ (str.to.re "NSIS_DOWNLOAD") (re.* re.allchar) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "gpstool.globaladserver.com\x0a"))))
; User-Agent\x3A\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BossUser-Agent:SpediaUser-Agent:\x0a")))))
; ^[\-]{0,1}[0-9]{1,}(([\.\,]{0,1}[0-9]{1,})|([0-9]{0,}))$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.union (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9"))) (re.* (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
