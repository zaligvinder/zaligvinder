(declare-const X String)
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.sogou.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE+The+password+is:\x0a")))))
; /filename=[^\n]*\x2epmd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pmd/i\x0a"))))
; /^("(\\["\\]|[^"])*"|[^\n])*$/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (str.to.re "\x0a")))) (str.to.re "/gm\x0a")))))
; Cookie\x3aAppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (str.to.re "Cookie:AppName/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
; IPAnaloffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "IPAnaloffers.bullseye-network.com\x0a")))
(check-sat)
