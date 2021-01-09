(declare-const X String)
; Searchdata2\.activshopper\.comdll\x3FproductsCUSTOMSAccwww\x2Elocators\x2Ecom
(assert (str.in.re X (str.to.re "Searchdata2.activshopper.comdll?productsCUSTOMSAccwww.locators.com\x0a")))
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".ico") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x0a"))))
; (SE-?)?[0-9]{12}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "SE") (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^User\x2DAgent\x3A\s*Mozilla\x0d?$/smiH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Mozilla") (re.opt (str.to.re "\x0d")) (str.to.re "/smiH\x0a"))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a")))))
(check-sat)
