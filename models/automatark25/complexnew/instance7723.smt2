(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a"))))
; /^(\x75|\x2d|\x2f|\x73|\xa2|\x2e|\x24|\x74)/sR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "u") (str.to.re "-") (str.to.re "/") (str.to.re "s") (str.to.re "\xa2") (str.to.re ".") (str.to.re "$") (str.to.re "t")) (str.to.re "/sR\x0a")))))
; ([+]?\d[ ]?[(]?\d{3}[)]?[ ]?\d{2,3}[- ]?\d{2}[- ]?\d{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.range "0" "9") (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re " ")) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")))))
; /\x2ehlp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.hlp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; engineResultUser-Agent\x3A
(assert (str.in.re X (str.to.re "engineResultUser-Agent:\x0a")))
(check-sat)
