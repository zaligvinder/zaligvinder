(declare-const X String)
; \x2Fdss\x2Fcc\.2_0_0\.GoogleHXDownloadasdbiz\x2Ebiz
(assert (not (str.in.re X (str.to.re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\x0a"))))
(check-sat)
