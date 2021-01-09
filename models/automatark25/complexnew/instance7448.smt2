(declare-const X String)
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a"))))
; ^ *([0-1]?[0-9]|[2][0-3]):[0-5][0-9] *(a|p|A|P)(m|M) *$
(assert (not (str.in.re X (re.++ (re.* (str.to.re " ")) (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.* (str.to.re " ")) (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (re.* (str.to.re " ")) (str.to.re "\x0a")))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (not (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a")))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
(check-sat)
