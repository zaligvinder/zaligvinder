(declare-const X String)
; Prodaosearch\x2EcomReferer\x3A007User-Agent\x3A
(assert (str.in.re X (str.to.re "Prodaosearch.comReferer:007User-Agent:\x0a")))
; /(\x19\x00|\x00\x5C)\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x19\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
; /filename=[^\n]*\x2exml/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xml/i\x0a")))))
(check-sat)
