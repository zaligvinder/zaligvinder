(declare-const X String)
; \x2FrssaboutinformationHost\x3A\x2Fezsbu=DISKHost\x3Aad\x2Emokead\x2Ecom
(assert (not (str.in.re X (str.to.re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\x0a"))))
(check-sat)
