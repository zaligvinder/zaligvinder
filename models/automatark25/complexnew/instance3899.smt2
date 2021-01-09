(declare-const X String)
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a")))
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (not (str.in.re X (str.to.re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\x0a"))))
; X-OSSproxy\x3aFTPSubject\x3aServerMicrosoft\x2APORT3\x2APro
(assert (not (str.in.re X (str.to.re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\x0a"))))
(check-sat)
