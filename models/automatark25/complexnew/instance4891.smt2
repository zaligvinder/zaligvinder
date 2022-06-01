(declare-const X String)
; /filename=[^\n]*\u{2e}xslt/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}")))))
; Host\u{3A}.*www\u{2e}2-seek\u{2e}com\u{2f}search
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "www.2-seek.com/search\u{a}")))))
; url=http\u{3A}\s+jsp\w+Subject\u{3A}i\-femdom\u{2E}comUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "url=http:\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jsp") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Subject:i-femdom.comUser-Agent:\u{a}"))))
(check-sat)
