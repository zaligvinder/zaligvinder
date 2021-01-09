(declare-const X String)
; ^[a-zA-Z]{3}[uU]{1}[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.union (str.to.re "u") (str.to.re "U"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]\x0a")))))
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (not (str.in.re X (re.++ (str.to.re "/ID3\x03\x00") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to.re "T") (str.to.re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to.re "COMM")) (str.to.re "/smi\x0a")))))
; Hours\w+User-Agent\x3AChildWebGuardian
(assert (not (str.in.re X (re.++ (str.to.re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:ChildWebGuardian\x0a")))))
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//home/index") re.allchar (str.to.re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
