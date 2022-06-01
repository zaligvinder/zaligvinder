(declare-const X String)
; /filename=[^\n]*\u{2e}ht3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ht3/i\u{a}")))))
; Kontikidownloadfile\u{2e}orged2kcom\u{3E}Host\u{3A}Windows
(assert (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}")))
; Ready\s+Eye.*http\u{3A}\u{2F}\u{2F}supremetoolbar
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Eye") (re.* re.allchar) (str.to_re "http://supremetoolbar\u{a}")))))
; \u{22}StarLogger\u{22}User-Agent\u{3A}JMailUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}"))))
(check-sat)
