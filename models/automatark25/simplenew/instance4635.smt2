(declare-const X String)
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in.re X (str.to.re "/rssupdate.cgiToolbarsearch.dropspam.com\x0a"))))
(check-sat)
