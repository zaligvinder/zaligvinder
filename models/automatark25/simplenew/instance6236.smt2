(declare-const X String)
; \swww\.fast-finder\.com\d+Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.com") (re.+ (re.range "0" "9")) (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}"))))
(check-sat)
