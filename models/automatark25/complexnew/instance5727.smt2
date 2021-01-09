(declare-const X String)
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "Host:as.starware.com/dp/search?x=\x0a")))
; (((file|gopher|news|nntp|telnet|http|ftp|https|ftps|sftp)://)|(www\.))+(([a-zA-Z0-9\._-]+\.[a-zA-Z]{2,6})|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(/[a-zA-Z0-9\&%_\./-~-]*)?
(assert (str.in.re X (re.++ (re.+ (re.union (re.++ (re.union (str.to.re "file") (str.to.re "gopher") (str.to.re "news") (str.to.re "nntp") (str.to.re "telnet") (str.to.re "http") (str.to.re "ftp") (str.to.re "https") (str.to.re "ftps") (str.to.re "sftp")) (str.to.re "://")) (str.to.re "www."))) (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "&") (str.to.re "%") (str.to.re "_") (str.to.re ".") (re.range "/" "~") (str.to.re "-"))))) (str.to.re "\x0a"))))
; /\x2edocm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.docm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
(check-sat)
