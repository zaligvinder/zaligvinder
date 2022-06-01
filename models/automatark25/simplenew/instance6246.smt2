(declare-const X String)
; Subject\u{3A}.*Host\u{3A}\d+iz=iMeshBar%3f\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}"))))
(check-sat)
