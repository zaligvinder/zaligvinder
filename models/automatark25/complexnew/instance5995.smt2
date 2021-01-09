(declare-const X String)
; EI.*to\s+AppName\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (not (str.in.re X (re.++ (str.to.re "EI") (re.* re.allchar) (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AppName/GRSI|Server|\x13Host:origin=sidefind\x0a")))))
; Guarded\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\x13\x0a")))))
(check-sat)
