(declare-const X String)
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "UI2") (re.* re.allchar) (str.to.re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\x0a")))))
; /^(www\.|http:\/\/|https:\/\/|http:\/\/www\.|https:\/\/www\.)[a-z0-9]+\.[a-z]{2,4}$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "www.") (str.to.re "http://") (str.to.re "https://") (str.to.re "http://www.") (str.to.re "https://www.")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")) (str.to.re "/\x0a")))))
(check-sat)
