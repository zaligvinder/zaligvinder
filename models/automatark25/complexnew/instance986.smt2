(declare-const X String)
; SpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (str.in.re X (str.to.re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\x0a")))
; ((http(s)?:\/\/)?[a-z0-9-]{3,}(\.[a-z0-9-]{2,})+(:[0-9]+)?((\/[^\/\s.]+\.[^\/\s.,!]+)|(\/[^\/\s.,!]*))*)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://"))) (re.+ (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.* (re.union (re.++ (str.to.re "/") (re.+ (re.union (str.to.re "/") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".") (re.+ (re.union (str.to.re "/") (str.to.re ".") (str.to.re ",") (str.to.re "!") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.++ (str.to.re "/") (re.* (re.union (str.to.re "/") (str.to.re ".") (str.to.re ",") (str.to.re "!") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))))))
; (\<(.*?)\>)(.*?)(\<\/(.*?)\>)
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a<") (re.* re.allchar) (str.to.re "></") (re.* re.allchar) (str.to.re ">"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com\x0a"))))
(check-sat)
