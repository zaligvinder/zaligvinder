(declare-const X String)
; \u{2F}rssaboutinformationHost\u{3A}\u{2F}ezsbu=DISKHost\u{3A}ad\u{2E}mokead\u{2E}com
(assert (not (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}"))))
(check-sat)
