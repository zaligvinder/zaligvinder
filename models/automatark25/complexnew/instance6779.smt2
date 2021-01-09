(declare-const X String)
; .*[Vv][Ii1]agr.*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "V") (str.to.re "v")) (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (str.to.re "agr") (re.* re.allchar) (str.to.re "\x0a"))))
; \A(.*?)\s+(\d+[a-zA-Z]{0,1}\s{0,1}[-]{1}\s{0,1}\d*[a-zA-Z]{0,1}|\d+[a-zA-Z-]{0,1}\d*[a-zA-Z]{0,1})
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.range "0" "9")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2epmd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pmd/i\x0a")))))
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\sMycount\x2Eyok\x2EcomProBuilt-inBasicYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FunWebProducts") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Mycount.yok.comProBuilt-inBasicYWRtaW46cGFzc3dvcmQ\x0a"))))
; aresflashdownloader\x2Ecom%3fccecaedbebfcaf\x2Ecom\stoolbar\.anwb\.nl
(assert (not (str.in.re X (re.++ (str.to.re "aresflashdownloader.com%3fccecaedbebfcaf.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl\x0a")))))
(check-sat)
