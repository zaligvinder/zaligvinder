(declare-const X String)
; /\x2ewebm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.webm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; ^([^ \x21-\x26\x28-\x2C\x2E-\x40\x5B-\x60\x7B-\xAC\xAE-\xBF\xF7\xFE]+)$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\xac") (re.range "\xae" "\xbf") (str.to.re "\xf7") (str.to.re "\xfe"))) (str.to.re "\x0a"))))
(check-sat)
