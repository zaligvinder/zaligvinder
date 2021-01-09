(declare-const X String)
; Information\s+Host\x3A.*com
(assert (not (str.in.re X (re.++ (str.to.re "Information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "com\x0a")))))
; com.*is[^\n\r]*Host\x3A\s+User-Agent\x3Au=serverFILE\x2Fxml\x2Ftoolbar\x2Fcheck=at\x3aHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "com") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:u=serverFILE/xml/toolbar/check=at:Host:\x0a")))))
; ';([dmstrl])([ .,?!\)\\/<])
(assert (str.in.re X (re.++ (str.to.re "';") (re.union (str.to.re "d") (str.to.re "m") (str.to.re "s") (str.to.re "t") (str.to.re "r") (str.to.re "l")) (re.union (str.to.re " ") (str.to.re ".") (str.to.re ",") (str.to.re "?") (str.to.re "!") (str.to.re ")") (str.to.re "\x5c") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a"))))
; username=(.*)&password=(.*)
(assert (not (str.in.re X (re.++ (str.to.re "username=") (re.* re.allchar) (str.to.re "&password=") (re.* re.allchar) (str.to.re "\x0a")))))
; /\x2ebmp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.bmp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
