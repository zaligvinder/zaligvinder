(declare-const X String)
; \u{5B}StaticHost\u{3A}FROM\u{3A}cs\u{2E}shopperreports\u{2E}commedia\u{2E}top-banners\u{2E}com\u{2F}bar_pl\u{2F}b\.fcgi
(assert (str.in_re X (str.to_re "[StaticHost:FROM:cs.shopperreports.commedia.top-banners.com/bar_pl/b.fcgi\u{a}")))
; Toolbarverpop\u{2E}popuptoast\u{2E}comtvshowticketscount\u{2E}yok\u{2E}com
(assert (str.in_re X (str.to_re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\u{a}")))
; /^\d+O\d+\.jsp\?[a-z0-9\u{3d}\u{2b}\u{2f}]{20}/iR
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iR\u{a}"))))
(check-sat)
