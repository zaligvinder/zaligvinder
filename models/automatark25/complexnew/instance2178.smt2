(declare-const X String)
; ^\w*[-]*\w*\\\w*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (str.to.re "-")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x5c") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]")))))
; ((\d|([a-f]|[A-F])){2}:){5}(\d|([a-f]|[A-F])){2}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
; [^A-Za-z0-9_@\.]|@{2,}|\.{5,}
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.* (str.to.re "@"))) (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (str.to.re ".")) (re.* (str.to.re "."))) (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re ".")))))
; User-Agent\x3a\w+Owner\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a"))))
(check-sat)
