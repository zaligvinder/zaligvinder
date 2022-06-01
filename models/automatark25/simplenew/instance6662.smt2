(declare-const X String)
; toolsbar\u{2E}kuaiso\u{2E}com\d\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to_re "/bar_pl/chk_bar.fcgi\u{a}"))))
(check-sat)
