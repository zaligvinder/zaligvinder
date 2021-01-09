(declare-const X String)
; /filename=[^\n]*\x2excf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xcf/i\x0a")))))
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re "N") (str.to.re "n") (str.to.re "S") (str.to.re "s")) (str.to.re " ") (re.+ (re.range "0" "9")) (re.union (str.to.re "W") (str.to.re "w") (str.to.re "E") (str.to.re "e")) (str.to.re "\x0a"))))
; ([1-9]|[1-4][0-9]|5[0-2])
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "2"))) (str.to.re "\x0a"))))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a")))))
; =(?m)^(LogName=(Security).*)\n(SourceName=.*)\n(EventCode=.*)\n(EventType=.*)\n(Type=(Success Audit|Information).*)\n(ComputerName=(HOSTNAME1|HOSTNAME2|HOSTNAME3).*)\n
(assert (str.in.re X (re.++ (str.to.re "=\x0a\x0a\x0a\x0a\x0a\x0a\x0aLogName=Security") (re.* re.allchar) (str.to.re "SourceName=") (re.* re.allchar) (str.to.re "EventCode=") (re.* re.allchar) (str.to.re "EventType=") (re.* re.allchar) (str.to.re "Type=") (re.union (str.to.re "Success Audit") (str.to.re "Information")) (re.* re.allchar) (str.to.re "ComputerName=") (re.* re.allchar) (str.to.re "HOSTNAME") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3")))))
(check-sat)
