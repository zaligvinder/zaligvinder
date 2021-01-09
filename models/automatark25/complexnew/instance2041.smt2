(declare-const X String)
; Host\x3A\dMicrosoft\w+\+Version\+
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+\x0a")))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a"))))
(check-sat)
