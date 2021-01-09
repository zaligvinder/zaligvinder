(declare-const X String)
; \b[A-Z-[DFIOQUWZ]]\d[A-Z-[DFIOQU]]\ +\d[A-Z-[DFIOQU]]\d\b
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U") (str.to.re "W") (str.to.re "Z")) (str.to.re "]") (re.range "0" "9") (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]") (re.+ (str.to.re " ")) (re.range "0" "9") (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]") (re.range "0" "9") (str.to.re "\x0a"))))
; ^100$|^\d{0,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (str.to.re "100") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; Guarded\s+ready\w+PARSERHost\x3aA-311ServerUser-Agent\x3Ascn\x2emystoretoolbar\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "Guarded") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ready") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSERHost:A-311ServerUser-Agent:scn.mystoretoolbar.com\x13\x0a")))))
(check-sat)
