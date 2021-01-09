(declare-const X String)
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (str.in.re X (str.to.re "HXDownloadUser-Agent:answerDeletingCookieReferer:\x0a")))
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (str.in.re X (re.++ (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (str.to.re "\x22")) (str.to.re "cid") (re.* (str.to.re " ")) (str.to.re ":") (re.* (str.to.re " ")) (re.+ (re.union (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re " "))) (str.to.re "\x0a"))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a"))))
(check-sat)
