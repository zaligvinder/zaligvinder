(declare-const X String)
; ^([a-zA-z\s]{2,})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; /filename=[^\n]*\x2ewsz/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wsz/i\x0a")))))
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\x0a")))))
; /\.addAnnot\s*\x28[^\x29]*?points\s*\x3a\s*0/i
(assert (str.in.re X (re.++ (str.to.re "/.addAnnot") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.comp (str.to.re ")"))) (str.to.re "points") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "0/i\x0a"))))
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Seconds-ovplHost:Host:Download\x0a"))))
(check-sat)
