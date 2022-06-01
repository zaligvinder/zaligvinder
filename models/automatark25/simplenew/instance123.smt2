(declare-const X String)
; PASSW=\w+www2\u{2e}instantbuzz\u{2e}com\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com/bar_pl/chk_bar.fcgi\u{a}"))))
(check-sat)
