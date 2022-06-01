(declare-const X String)
; Host\u{3a}.*\u{2F}rss.*Desktopcargo=report\<\u{2F}title\>
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}")))))
; isiz=Xtrastepwebhancer\u{2E}comStubbyOnever\u{3a}Ghost
(assert (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}")))
(check-sat)
