(declare-const X String)
; ZC-Bridge\s+www\x2Ewebcruiser\x2Ecc\x22StealthReferer\x3AContact
(assert (not (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webcruiser.cc\x22StealthReferer:Contact\x0a")))))
; /filename=[^\n]*\x2eram/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ram/i\x0a"))))
; ^(([0-9])|([0-2][0-9])|(3[0-1]))\/(([1-9])|(0[1-9])|(1[0-2]))\/(([0-9][0-9])|([1-2][0,9][0-9][0-9]))$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "9")) (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
