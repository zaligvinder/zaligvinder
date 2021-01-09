(declare-const X String)
; select\x2FGet\s+Host\x3A.*ppcdomain\x2Eco\x2Euk
(assert (str.in.re X (re.++ (str.to.re "select/Get") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ppcdomain.co.uk\x0a"))))
; \x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/toolbar/supremetb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13\x0a")))))
; /rapidshare\.com\/files\/(\d+)\/([^\'^\"^\s^>^<^\\^\/]+)/
(assert (not (str.in.re X (re.++ (str.to.re "/rapidshare.com/files/") (re.+ (re.range "0" "9")) (str.to.re "/") (re.+ (re.union (str.to.re "'") (str.to.re "^") (str.to.re "\x22") (str.to.re ">") (str.to.re "<") (str.to.re "\x5c") (str.to.re "/") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/\x0a")))))
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
(check-sat)
