(declare-const X String)
; Host\x3a.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "/rss") (re.* re.allchar) (str.to.re "Desktopcargo=report</title>\x0a")))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (str.in.re X (str.to.re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\x13\x0a")))
(check-sat)
