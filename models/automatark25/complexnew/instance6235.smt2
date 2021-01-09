(declare-const X String)
; /filename=[^\n]*\x2eani/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ani/i\x0a")))))
; (([\w|\.]*)\s*={1}\s*(.*?))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.union (str.to.re "|") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (str.to.re "=")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar)))))
; /^Subject\x3A[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (str.in.re X (re.++ (str.to.re "/Subject:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Trojaner-Info") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Newsletter/smi\x0a"))))
; ppcdomain\x2Eco\x2Euk\d+Referer\x3A\w+PARSERHost\x3aA-311ServerUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ppcdomain.co.uk") (re.+ (re.range "0" "9")) (str.to.re "Referer:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSERHost:A-311ServerUser-Agent:\x0a")))))
(check-sat)
