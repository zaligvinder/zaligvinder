(declare-const X String)
; ed2k\xc0STATUS\xc0Server\x7D\x7BPort\x3Ahttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "ed2k\xc0STATUS\xc0Server\x13}{Port:http://tv.seekmo.com/showme.aspx?keyword=\x0a")))
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a"))))
; /\x2evqf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.vqf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2emkv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mkv/i\x0a"))))
; \stoolbar\.anwb\.nl\s+A-311.*Host\x3aHost\x3Ayddznydqir\x2fevi
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311") (re.* re.allchar) (str.to.re "Host:Host:yddznydqir/evi\x0a"))))
(check-sat)
