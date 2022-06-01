(declare-const X String)
; \u{2F}ta\u{2F}NEWS\u{2F}\d+Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "/ta/NEWS/") (re.+ (re.range "0" "9")) (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}"))))
(check-sat)
