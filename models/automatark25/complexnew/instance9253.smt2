(declare-const X String)
; /\x2eurl([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.url") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ZC-Bridge\s+www\x2Ewebcruiser\x2Ecc\x22StealthReferer\x3AContact
(assert (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webcruiser.cc\x22StealthReferer:Contact\x0a"))))
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&destination_ip=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "`") (str.to.re "$(") (str.to.re "%60") (str.to.re "%24%28")) (str.to.re "/Pmi\x0a"))))
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a")))))
; /z\x3D[A-Z0-9%]{700}/i
(assert (not (str.in.re X (re.++ (str.to.re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "%"))) (str.to.re "/i\x0a")))))
(check-sat)
