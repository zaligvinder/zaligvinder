(declare-const X String)
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (not (str.in.re X (str.to.re "/rssScaneradfsgecoiwnf\x1b}{Trojan:logsHost:\x0a"))))
(check-sat)
