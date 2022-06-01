(declare-const X String)
; isiz=Xtrastepwebhancer\u{2E}comStubbyOnever\u{3a}Ghost
(assert (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}")))
(check-sat)
