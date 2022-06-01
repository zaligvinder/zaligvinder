(declare-const X String)
; Information\s+Host\u{3A}.*com
(assert (not (str.in_re X (re.++ (str.to_re "Information") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "com\u{a}")))))
; com.*is[^\n\r]*Host\u{3A}\s+User-Agent\u{3A}u=serverFILE\u{2F}xml\u{2F}toolbar\u{2F}check=at\u{3a}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "com") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\u{a}")))))
; ';([dmstrl])([ .,?!\)\\/<])
(assert (str.in_re X (re.++ (str.to_re "';") (re.union (str.to_re "d") (str.to_re "m") (str.to_re "s") (str.to_re "t") (str.to_re "r") (str.to_re "l")) (re.union (str.to_re " ") (str.to_re ".") (str.to_re ",") (str.to_re "?") (str.to_re "!") (str.to_re ")") (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "<")) (str.to_re "\u{a}"))))
; username=(.*)&password=(.*)
(assert (not (str.in_re X (re.++ (str.to_re "username=") (re.* re.allchar) (str.to_re "&password=") (re.* re.allchar) (str.to_re "\u{a}")))))
; /\u{2e}bmp([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.bmp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
