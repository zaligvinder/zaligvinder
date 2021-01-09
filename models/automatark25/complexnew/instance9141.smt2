(declare-const X String)
; AdTools\sdownloadfile\x2eorg\w+com\x3E[^\n\r]*as\x2Estarware\x2EcomOS\x2FSSKCstech\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "AdTools") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "as.starware.comOS/SSKCstech.web-nexus.net\x0a"))))
; /filename=[^\n]*\x2eqcp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qcp/i\x0a"))))
; /\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B(\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B){500}/m
(assert (not (str.in.re X (re.++ (str.to.re "/\xf6\xec\xd9\xb3g\xcf\x9e={") ((_ re.loop 500 500) (str.to.re "\xf6\xec\xd9\xb3g\xcf\x9e={")) (str.to.re "/m\x0a")))))
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a")))
(check-sat)
