(declare-const X String)
; ^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.pdf)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (re.+ (re.++ (str.to.re "\x5c") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (re.* re.allchar))) (str.to.re "\x0a") re.allchar (str.to.re "pdf"))))
; ^[1-9][0-9]{1,6}\-[0-9]{2}\-[0-9]
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; welcomeforToolbarHost\x3A
(assert (not (str.in.re X (str.to.re "welcomeforToolbarHost:\x0a"))))
; ".*?"|".*$|'.*?'|'.*$
(assert (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x22") (re.* re.allchar)) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "'")) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "\x0a")))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a")))))
(check-sat)
