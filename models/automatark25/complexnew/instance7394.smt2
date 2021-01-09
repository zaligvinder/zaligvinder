(declare-const X String)
; [A-Z][a-z]+
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a")))))
; /\/bin\.exe$/U
(assert (str.in.re X (str.to.re "//bin.exe/U\x0a")))
; ^([07][1-7]|1[0-6]|2[0-7]|[35][0-9]|[468][0-8]|9[0-589])-?\d{7}$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "7")) (re.range "1" "7")) (re.++ (str.to.re "1") (re.range "0" "6")) (re.++ (str.to.re "2") (re.range "0" "7")) (re.++ (re.union (str.to.re "3") (str.to.re "5")) (re.range "0" "9")) (re.++ (re.union (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.range "0" "8")) (re.++ (str.to.re "9") (re.union (re.range "0" "5") (str.to.re "8") (str.to.re "9")))) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a"))))
; /\x3d\x3d$/P
(assert (str.in.re X (str.to.re "/==/P\x0a")))
(check-sat)
