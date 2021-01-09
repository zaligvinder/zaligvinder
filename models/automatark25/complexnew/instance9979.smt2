(declare-const X String)
; Host\x3AHost\x3AFrom\x3a\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo\x2fzowy
(assert (not (str.in.re X (str.to.re "Host:Host:From:\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo/zowy\x0a"))))
; fsbuff\s+User-Agent\x3Afrom\x3A
(assert (str.in.re X (re.++ (str.to.re "fsbuff") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:from:\x0a"))))
; /^\x2f[a-z\d]{1,8}\.exe$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/Ui\x0a")))))
; (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (re.++ (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "x") (str.to.re "X")) (re.union (str.to.re "T") (str.to.re "t"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "O") (str.to.re "o")) (re.union (str.to.re "S") (str.to.re "s")) (re.union (str.to.re "T") (str.to.re "t")) (re.union (str.to.re "E") (str.to.re "e")))) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0a")))))
; body=wordHost\x3ASpediartaddrEverywareHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "body=wordHost:SpediartaddrEverywareHost:Host:\x0a")))
(check-sat)
