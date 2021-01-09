(declare-const X String)
; /\/bin\.exe$/U
(assert (not (str.in.re X (str.to.re "//bin.exe/U\x0a"))))
; eveocczmthmmq\x2fomzl\d+Host\x3Aulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to.re "Host:ulmxct/mqoyc\x0a"))))
; \({1}[0-9]{3}\){1}\-{1}[0-9]{3}\-{1}[0-9]{4}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (str.in.re X (re.++ (str.to.re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; \D
(assert (not (str.in.re X (re.++ (re.comp (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
