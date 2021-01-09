(declare-const X String)
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in.re X (str.to.re "/rssupdate.cgiToolbarsearch.dropspam.com\x0a"))))
; name\x2ecnnic\x2ecn\x2Fbar_pl\x2Fchk_bar\.fcgiHost\x3A\x7CConnected
(assert (str.in.re X (str.to.re "name.cnnic.cn/bar_pl/chk_bar.fcgiHost:|Connected\x0a")))
(check-sat)
