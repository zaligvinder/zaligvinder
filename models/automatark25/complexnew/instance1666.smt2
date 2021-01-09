(declare-const X String)
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in.re X (str.to.re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\x0a"))))
; PcastPORT-config\x2E180solutions\x2Ecom
(assert (not (str.in.re X (str.to.re "PcastPORT-config.180solutions.com\x0a"))))
(check-sat)
