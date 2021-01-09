(declare-const X String)
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (str.in.re X (re.++ (str.to.re "//vic.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; version\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a"))))
; /filename=[^\n]*\x2ef4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4p/i\x0a")))))
(check-sat)
