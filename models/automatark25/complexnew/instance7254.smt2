(declare-const X String)
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a"))))
; (\d{3}.?\d{3}.?\d{3}-?\d{2})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9"))))))
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re "N") (str.to.re "n") (str.to.re "S") (str.to.re "s")) (str.to.re " ") (re.+ (re.range "0" "9")) (re.union (str.to.re "W") (str.to.re "w") (str.to.re "E") (str.to.re "e")) (str.to.re "\x0a")))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PG=SPEEDBARadblock.linkz.com\x0a"))))
; /^\/\?q=[^&]*##1$/U
(assert (str.in.re X (re.++ (str.to.re "//?q=") (re.* (re.comp (str.to.re "&"))) (str.to.re "##1/U\x0a"))))
(check-sat)
