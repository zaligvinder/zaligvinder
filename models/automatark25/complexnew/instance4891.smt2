(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a")))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.2-seek.com/search\x0a")))))
; url=http\x3A\s+jsp\w+Subject\x3Ai\-femdom\x2EcomUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "url=http:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jsp") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Subject:i-femdom.comUser-Agent:\x0a"))))
(check-sat)
