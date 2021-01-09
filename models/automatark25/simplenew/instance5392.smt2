(declare-const X String)
; M\x2Ezip\d+dll\x3F\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "M.zip") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a"))))
(check-sat)
