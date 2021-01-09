(declare-const X String)
; /\x2ewpd([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wpd") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pif") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/si\x0a")))))
; Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (str.in.re X (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a")))
; ^([1-9]([0-9])?)(\.(([0])?|([1-9])?|[1]([0-1])?)?)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.opt (re.union (re.opt (str.to.re "0")) (re.opt (re.range "1" "9")) (re.++ (str.to.re "1") (re.opt (re.range "0" "1"))))))) (str.to.re "\x0a") (re.range "1" "9") (re.opt (re.range "0" "9"))))))
(check-sat)
