(declare-const X String)
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mkv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (str.in.re X (str.to.re "Host:User-Agent:www.raxsearch.com\x0a")))
(check-sat)
