(declare-const X String)
; User-Agent\u{3A}\s+www\u{2E}wordiq\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}\u{a}"))))
; /\u{2e}ppsx([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.ppsx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /counter.img\?theme\=\d+\&digits\=10\&siteId\=\d+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/counter") re.allchar (str.to_re "img?theme=") (re.+ (re.range "0" "9")) (str.to_re "&digits=10&siteId=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; URLBlaze.*User-Agent\u{3A}.*mPOPUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "URLBlaze") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "mPOPUser-Agent:\u{a}")))))
(check-sat)
