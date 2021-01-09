(declare-const X String)
; ^<a[^>]*(http://[^"]*)[^>]*>([ 0-9a-zA-Z]+)</a>$
(assert (not (str.in.re X (re.++ (str.to.re "<a") (re.* (re.comp (str.to.re ">"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.+ (re.union (str.to.re " ") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "</a>\x0ahttp://") (re.* (re.comp (str.to.re "\x22")))))))
; User-Agent\x3a\w+Owner\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a")))))
; ^([1-9]|[1-9]\d|[1-2]\d{2}|3[0-6][0-6])$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.range "0" "6") (re.range "0" "6"))) (str.to.re "\x0a")))))
(check-sat)
