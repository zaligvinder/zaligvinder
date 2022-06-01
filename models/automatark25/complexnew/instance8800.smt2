(declare-const X String)
; /\u{2e}webm([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.webm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\.thecommunicator\.net\d+http\u{3A}\u{2F}\u{2F}tv\u{2E}seekmo\u{2E}com\u{2F}showme\u{2E}aspx\u{3F}keyword=
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
; ^([^ \u{21}-\u{26}\u{28}-\u{2C}\u{2E}-\u{40}\u{5B}-\u{60}\u{7B}-\u{AC}\u{AE}-\u{BF}\u{F7}\u{FE}]+)$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\u{ac}") (re.range "\u{ae}" "\u{bf}") (str.to_re "\u{f7}") (str.to_re "\u{fe}"))) (str.to_re "\u{a}"))))
(check-sat)
