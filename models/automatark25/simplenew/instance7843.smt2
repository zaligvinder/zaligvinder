(declare-const X String)
; \swww\.fast-finder\.com\d+Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com") (re.+ (re.range "0" "9")) (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a"))))
(check-sat)
