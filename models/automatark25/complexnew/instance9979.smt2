(declare-const X String)
; Host\u{3A}Host\u{3A}From\u{3a}\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furaxbnymomspyo\u{2f}zowy
(assert (not (str.in_re X (str.to_re "Host:Host:From:\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furaxbnymomspyo/zowy\u{a}"))))
; fsbuff\s+User-Agent\u{3A}from\u{3A}
(assert (str.in_re X (re.++ (str.to_re "fsbuff") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:from:\u{a}"))))
; /^\u{2f}[a-z\d]{1,8}\.exe$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".exe/Ui\u{a}")))))
; (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.union (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "x") (str.to_re "X")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "E") (str.to_re "e")))) (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; body=wordHost\u{3A}SpediartaddrEverywareHost\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "body=wordHost:SpediartaddrEverywareHost:Host:\u{a}")))
(check-sat)
