(declare-const X String)
; SpyBuddyZOMBIES\u{5f}HTTP\u{5f}GETearch\u{2E}earthlink
(assert (str.in_re X (str.to_re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\u{a}")))
; ((http(s)?:\/\/)?[a-z0-9-]{3,}(\.[a-z0-9-]{2,})+(:[0-9]+)?((\/[^\/\s.]+\.[^\/\s.,!]+)|(\/[^\/\s.,!]*))*)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://"))) (re.+ (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.union (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "/") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".") (re.+ (re.union (str.to_re "/") (str.to_re ".") (str.to_re ",") (str.to_re "!") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "/") (str.to_re ".") (str.to_re ",") (str.to_re "!") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))))))
; (\<(.*?)\>)(.*?)(\<\/(.*?)\>)
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}<") (re.* re.allchar) (str.to_re "></") (re.* re.allchar) (str.to_re ">"))))
; www\u{2E}weepee\u{2E}com\w+Owner\u{3A}\d+metaresults\.copernic\.com
(assert (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:") (re.+ (re.range "0" "9")) (str.to_re "metaresults.copernic.com\u{a}"))))
(check-sat)
