(declare-const X String)
; HXDownloadUser-Agent\u{3A}answerDeletingCookieReferer\u{3A}
(assert (str.in_re X (str.to_re "HXDownloadUser-Agent:answerDeletingCookieReferer:\u{a}")))
(check-sat)
