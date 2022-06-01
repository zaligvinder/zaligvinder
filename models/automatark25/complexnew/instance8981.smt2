(declare-const X String)
; \u{5B}StaticHost\u{3A}FROM\u{3A}cs\u{2E}shopperreports\u{2E}commedia\u{2E}top-banners\u{2E}com\u{2F}bar_pl\u{2F}b\.fcgi
(assert (not (str.in_re X (str.to_re "[StaticHost:FROM:cs.shopperreports.commedia.top-banners.com/bar_pl/b.fcgi\u{a}"))))
; ^[ .a-zA-Z0-9:-]{1,150}$
(assert (str.in_re X (re.++ ((_ re.loop 1 150) (re.union (str.to_re " ") (str.to_re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ":") (str.to_re "-"))) (str.to_re "\u{a}"))))
; @"^\d[a-zA-Z0-9]+$"
(assert (str.in_re X (re.++ (str.to_re "@\u{22}") (re.range "0" "9") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{22}\u{a}"))))
(check-sat)
