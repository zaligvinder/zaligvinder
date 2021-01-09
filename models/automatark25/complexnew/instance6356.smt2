(declare-const X String)
; \x2Ehtml.*cm.*www\x2Epeer2mail\x2EcomConnectedStubbyawbeta\.net-nucleus\.com
(assert (str.in.re X (re.++ (str.to.re ".html") (re.* re.allchar) (str.to.re "cm") (re.* re.allchar) (str.to.re "www.peer2mail.comConnectedStubbyawbeta.net-nucleus.com\x0a"))))
; \.myway\.comToolbarUI2Host\x3ASubject\x3Atoxbqyosoe\x2fcpvm
(assert (not (str.in.re X (str.to.re ".myway.com\x1bToolbarUI2Host:Subject:toxbqyosoe/cpvm\x0a"))))
(check-sat)
