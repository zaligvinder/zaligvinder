(declare-const X String)
; /filename=[^\n]*\x2ejpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpeg/i\x0a"))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in.re X (str.to.re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\x13\x0a"))))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (not (str.in.re X (str.to.re "www.myarmory.comHost:Host:messagessearch.imesh.com\x0a"))))
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "M")) (re.opt (str.to.re "T")) (re.opt (str.to.re "W")) (re.opt (str.to.re "TH")) (re.opt (str.to.re "F")) (re.opt (str.to.re "S")) (re.opt (str.to.re "SU")) (str.to.re "\x0a"))))
(check-sat)
