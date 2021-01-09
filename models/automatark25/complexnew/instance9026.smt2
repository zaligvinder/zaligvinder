(declare-const X String)
; /filename=[^\n]*\x2eurl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a")))))
; ^([a-zA-Z.\s']{1,50})$
(assert (str.in.re X (re.++ ((_ re.loop 1 50) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ".") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; /^\/[a-f0-9]{8}\.js\?cp\x3d/Umi
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".js?cp=/Umi\x0a")))))
; [1-9][0-9]
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; /\x23\d{2}\x3a\d{2}\x3a\d\d$/R
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") (re.range "0" "9") (re.range "0" "9") (str.to.re "/R\x0a"))))
(check-sat)
