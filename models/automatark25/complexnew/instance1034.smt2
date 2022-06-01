(declare-const X String)
; \u{2F}rssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "/rssupdate.cgiToolbarsearch.dropspam.com\u{a}"))))
; name\u{2e}cnnic\u{2e}cn\u{2F}bar_pl\u{2F}chk_bar\.fcgiHost\u{3A}\u{7C}Connected
(assert (str.in_re X (str.to_re "name.cnnic.cn/bar_pl/chk_bar.fcgiHost:|Connected\u{a}")))
(check-sat)
