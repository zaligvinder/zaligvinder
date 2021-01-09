(declare-const X String)
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a")))))
; /filename=[^\n]*\x2edib/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dib/i\x0a"))))
; info\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (not (str.in.re X (re.++ (str.to.re "info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13|roogoo|\x0a")))))
(check-sat)
