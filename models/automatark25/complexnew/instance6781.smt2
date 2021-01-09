(declare-const X String)
; Try2Find\x23\x23\x23\x23ToolbarServerUser\x3A
(assert (str.in.re X (str.to.re "Try2Find####ToolbarServerUser:\x0a")))
; ^\d{3}-\d{2}-\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; \\red([01]?\d\d?|2[0-4]\d|25[0-5])\\green([01]?\d\d?|2[0-4]\d|25[0-5])\\blue([01]?\d\d?|2[0-4]\d|25[0-5]);
(assert (not (str.in.re X (re.++ (str.to.re "\x5cred") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x5cgreen") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x5cblue") (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ";\x0a")))))
(check-sat)
