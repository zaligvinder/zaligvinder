(declare-const X String)
; /\x2Edocument\x2EinsertBefore\s*\x28[^\x2C]+\x29/smi
(assert (str.in.re X (re.++ (str.to.re "/.document.insertBefore") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ","))) (str.to.re ")/smi\x0a"))))
; /(\x19\x00|\x00\x5C)\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x19\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00n\x00w\x00d\x00b\x00l\x00i\x00b\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a")))))
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (str.in.re X (re.++ (str.to.re "sponsor2.ucmore.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:/ezsb\x0a"))))
(check-sat)
