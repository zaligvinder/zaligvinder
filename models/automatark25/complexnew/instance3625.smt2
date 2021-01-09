(declare-const X String)
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (str.in.re X (re.++ (str.to.re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "iufilfwulmfi/riuf.lio\x0a")))))
; version\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a")))))
; /filename=[^\n]*\x2emswmm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mswmm/i\x0a"))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (str.in.re X (str.to.re "Host:Subject:From:\xd0\xc5\xcf\xa2\x0a")))
(check-sat)
