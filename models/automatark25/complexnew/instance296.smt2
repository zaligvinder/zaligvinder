(declare-const X String)
; as\u{2E}starware\u{2E}com.*Casino.*LOG.*FilteredHost\u{3A}e2give\.com\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "as.starware.com") (re.* re.allchar) (str.to_re "Casino") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "FilteredHost:e2give.com/newsurfer4/\u{a}")))))
; /\u{2e}met([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.met") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; www\.searchinweb\.com\s+User-Agent\u{3A}bindmqnqgijmng\u{2f}oj
(assert (str.in_re X (re.++ (str.to_re "www.searchinweb.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}"))))
; Wareztv\u{2E}seekmo\u{2E}com\sKeyloggingTRUSTYFILES\u{2E}COM
(assert (not (str.in_re X (re.++ (str.to_re "Wareztv.seekmo.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Keylogging\u{13}TRUSTYFILES.COM\u{a}")))))
(check-sat)
