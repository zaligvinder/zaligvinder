(declare-const X String)
; ^([A-PR-UWYZ0-9][A-HK-Y0-9][AEHMNPRTVXY0-9]?[ABEHMNPRVWXY0-9]? {1,2}[0-9][ABD-HJLN-UW-Z]{2}|GIR 0AA)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to.re "W") (str.to.re "Y") (str.to.re "Z") (re.range "0" "9")) (re.union (re.range "A" "H") (re.range "K" "Y") (re.range "0" "9")) (re.opt (re.union (str.to.re "A") (str.to.re "E") (str.to.re "H") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "T") (str.to.re "V") (str.to.re "X") (str.to.re "Y") (re.range "0" "9"))) (re.opt (re.union (str.to.re "A") (str.to.re "B") (str.to.re "E") (str.to.re "H") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (str.to.re "V") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (re.range "0" "9"))) ((_ re.loop 1 2) (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "H") (str.to.re "J") (str.to.re "L") (re.range "N" "U") (re.range "W" "Z")))) (str.to.re "GIR 0AA")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
; ^([0-5]?\d?\d?\d?\d|6[0-4]\d\d\d|65[0-4]\d\d|655[0-2]\d|6553[0-5])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "5")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "6") (re.range "0" "4") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "65") (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "655") (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "6553") (re.range "0" "5"))) (str.to.re "\x0a"))))
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (str.to.re "ovplEchelonUser-Agent:User-Agent:Host:\x0a"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
(check-sat)
