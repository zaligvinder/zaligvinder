(declare-const X String)
; /\u{2e}flv([\?\u{5c}\u{2f}]|$)/Umsi
(assert (not (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}")))))
; \b([A-Za-z0-9]+)( )([A-Za-z0-9]+)\b
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re " ") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; zzzvmkituktgr\u{2f}etie\sHost\u{3A}SoftActivityYeah\!whenu\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "zzzvmkituktgr/etie") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:SoftActivity\u{13}Yeah!whenu.com\u{1b}\u{a}")))))
(check-sat)
