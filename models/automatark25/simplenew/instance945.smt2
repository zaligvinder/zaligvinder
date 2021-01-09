(declare-const X String)
; HXDownloadUser-Agent\x3AanswerDeletingCookieReferer\x3A
(assert (str.in.re X (str.to.re "HXDownloadUser-Agent:answerDeletingCookieReferer:\x0a")))
(check-sat)
