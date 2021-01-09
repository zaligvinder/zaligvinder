(declare-const X String)
; ^[-]?\d*(\.\d*)$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9"))))))
; ([A-Za-z0-9.]+\s*)+,
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re ",\x0a"))))
; A-311.*with\x3A\s+OnlineServer\x3aYeah\!User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "A-311") (re.* re.allchar) (str.to.re "with:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OnlineServer:Yeah!User-Agent:\x0a"))))
(check-sat)
