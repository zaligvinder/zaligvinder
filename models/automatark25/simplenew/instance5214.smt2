(declare-const X String)
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (str.in.re X (str.to.re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\x0a")))
(check-sat)
