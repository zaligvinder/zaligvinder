(declare-const X String)
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (not (str.in.re X (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a"))))
; Host\x3A\s+Host\x3A\x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lio
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:|roogoo|Testiufilfwulmfi/riuf.lio\x0a"))))
; Informationurl=Host\x3Aaction\x2Eforhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "Informationurl=Host:action.forhttp://www.searchinweb.com/search.php?said=bar\x0a")))
(check-sat)
