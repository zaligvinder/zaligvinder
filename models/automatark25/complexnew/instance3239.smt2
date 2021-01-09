(declare-const X String)
; Information\s+Host\x3A.*com
(assert (str.in.re X (re.++ (str.to.re "Information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "com\x0a"))))
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "TSA/S:Users\x5chttp://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; /(<\/?)(\w+)([^>]*>)/e
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/e\x0a<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">")))))
; e2give\.com\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a"))))
(check-sat)
