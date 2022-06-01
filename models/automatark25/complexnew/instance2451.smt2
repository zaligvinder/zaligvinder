(declare-const X String)
; [\t ]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re "\u{9}") (str.to_re " "))) (str.to_re "\u{a}")))))
; /\u{2e}mks([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mks") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; v\u{2E}\s+ocllceclbhs\u{2f}gth\w+http\u{3A}\u{2F}\u{2F}www\.searchinweb\.com\u{2F}search\.php\?said=bar
(assert (str.in_re X (re.++ (str.to_re "v.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "http://www.searchinweb.com/search.php?said=bar\u{a}"))))
; \u{7D}\u{7B}Port\u{3A}Host\u{3A}mqnqgijmng\u{2f}ojNavhelperUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\u{a}")))
(check-sat)
