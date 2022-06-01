(declare-const X String)
; filename=\u{22}\s+www\u{2E}peer2mail\u{2E}com.*LOG
(assert (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "LOG\u{a}"))))
; /\/pdfx\.html$/U
(assert (not (str.in_re X (str.to_re "//pdfx.html/U\u{a}"))))
; xbqyosoe\u{2f}cpvmviewComponentisrelated\u{2E}yok\u{2E}com
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}"))))
; Host\u{3a}OnlineUser-Agent\u{3A}www\u{2E}vip-se\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}"))))
(check-sat)
