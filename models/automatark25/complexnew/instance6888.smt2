(declare-const X String)
; /^\u{2F}cap\u{2F}temp\u{2F}[A-Za-z0-9]+\u{2E}jpg/miU
(assert (str.in_re X (re.++ (str.to_re "//cap/temp/") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jpg/miU\u{a}"))))
; ^100$|^\s*(\d{0,2})((\.|\,)(\d*))?\s*\%?\s*$
(assert (not (str.in_re X (re.union (str.to_re "100") (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.* (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "%")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))))
; Subject\u{3A}.*Host\u{3A}\d+iz=iMeshBar%3f\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}")))))
; /filename=[^\n]*\u{2e}wmx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wmx/i\u{a}"))))
(check-sat)
