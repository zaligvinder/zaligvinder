(declare-const X String)
; /^\/[0-9]{8}\.html$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".html/U\x0a")))))
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (not (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
; ^(([0-1]?[1-9]|2[0-3])(:)([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
; Host\x3A\sHello\x2E.*forum=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "forum=\x0a"))))
(check-sat)
