(declare-const X String)
; thesearchresltLoggerHost\u{3A}BetaHWAEHost\u{3A}is
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
; Host\u{3A}\s+Host\u{3A}Subject\u{3a}namedDownloadUser-Agent\u{3a}BackAtTaCk
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:namedDownloadUser-Agent:BackAtTaCk\u{a}")))))
; Test\d+TencentTravelerWebConnLibHost\u{3A}www\u{2E}e-finder\u{2E}cc
(assert (not (str.in_re X (re.++ (str.to_re "Test") (re.+ (re.range "0" "9")) (str.to_re "TencentTravelerWebConnLibHost:www.e-finder.cc\u{a}")))))
; \u{5B}StaticHost\u{3A}FROM\u{3A}cs\u{2E}shopperreports\u{2E}commedia\u{2E}top-banners\u{2E}com\u{2F}bar_pl\u{2F}b\.fcgi
(assert (not (str.in_re X (str.to_re "[StaticHost:FROM:cs.shopperreports.commedia.top-banners.com/bar_pl/b.fcgi\u{a}"))))
(check-sat)
