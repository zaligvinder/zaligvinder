(declare-const X String)
; \u{2E}html.*cm.*www\u{2E}peer2mail\u{2E}comConnectedStubbyawbeta\.net-nucleus\.com
(assert (str.in_re X (re.++ (str.to_re ".html") (re.* re.allchar) (str.to_re "cm") (re.* re.allchar) (str.to_re "www.peer2mail.comConnectedStubbyawbeta.net-nucleus.com\u{a}"))))
(check-sat)
