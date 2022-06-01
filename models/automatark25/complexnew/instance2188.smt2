(declare-const X String)
; xbqyosoe\u{2f}cpvmviewComponentisrelated\u{2E}yok\u{2E}com
(assert (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}")))
; Reports[^\n\r]*User-Agent\u{3A}.*largePass-Onseqepagqfphv\u{2f}sfd
(assert (str.in_re X (re.++ (str.to_re "Reports") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "largePass-Onseqepagqfphv/sfd\u{a}"))))
(check-sat)
