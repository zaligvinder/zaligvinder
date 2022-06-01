(declare-const X String)
; logs\d+X-Mailer\u{3a}\d+url=enews\u{2E}earthlink\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}") (re.+ (re.range "0" "9")) (str.to_re "url=enews.earthlink.net\u{a}"))))
; rprpgbnrppb\u{2f}ci\d\u{2E}lStopperHost\u{3A}Host\u{3a}clvompycem\u{2f}cen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "rprpgbnrppb/ci") (re.range "0" "9") (str.to_re ".lStopperHost:Host:clvompycem/cen.vcn\u{a}")))))
; toolsbar\u{2E}kuaiso\u{2E}com\d\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to_re "/bar_pl/chk_bar.fcgi\u{a}")))))
; User-Agent\u{3a}[^\n\r]*Echelon.*Blacksnprtz\u{7C}dialnoSearch
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Echelon") (re.* re.allchar) (str.to_re "Blacksnprtz|dialnoSearch\u{a}"))))
(check-sat)
