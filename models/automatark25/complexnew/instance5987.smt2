(declare-const X String)
; /filename=[^\n]*\x2esmil/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a"))))
; Subject\x3A\s+www\x2eproventactics\x2ecomdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.comdownloads.morpheus.com/rotation\x0a")))))
; ^((2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])\.){3}(2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "."))) (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "\x0a"))))
; ([0-9a-z_-]+[\.][0-9a-z_-]{1,3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-")))))))
(check-sat)
