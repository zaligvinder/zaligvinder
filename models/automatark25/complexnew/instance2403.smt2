(declare-const X String)
; FCTB1\stoolbar\.anwb\.nlrichfind\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "FCTB1") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlrichfind.com\u{a}")))))
; zzzvmkituktgr\u{2f}etie\sHost\u{3A}SoftActivityYeah\!whenu\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "zzzvmkituktgr/etie") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:SoftActivity\u{13}Yeah!whenu.com\u{1b}\u{a}")))))
; <h([1-6])>([^<]*)</h([1-6])>
(assert (not (str.in_re X (re.++ (str.to_re "<h") (re.range "1" "6") (str.to_re ">") (re.* (re.comp (str.to_re "<"))) (str.to_re "</h") (re.range "1" "6") (str.to_re ">\u{a}")))))
(check-sat)
