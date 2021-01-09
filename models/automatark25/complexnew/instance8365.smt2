(declare-const X String)
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (not (str.in.re X (re.++ (str.to.re "1") (re.union (str.to.re "3") (str.to.re "4")) (re.range "0" "9") (re.range "0" "9") (str.to.re "/") (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9")) (str.to.re "\x0a")))))
; Server\x00\s+SbAts\s+versionetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (re.++ (str.to.re "Server\x00") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAts") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "versionetbuviaebe/eqv.bvv\x0a")))))
; /\x2edws([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dws") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
