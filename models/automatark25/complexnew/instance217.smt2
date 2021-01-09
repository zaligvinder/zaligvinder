(declare-const X String)
; engineResultUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "engineResultUser-Agent:\x0a"))))
; ^(GB)?(\ )?[0-9]\d{2}(\ )?[0-9]\d{3}(\ )?(0[0-9]|[1-8][0-9]|9[0-6])(\ )?([0-9]\d{2})?|(GB)?(\ )?GD(\ )?([0-4][0-9][0-9])|(GB)?(\ )?HA(\ )?([5-9][0-9][0-9])$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "8") (re.range "0" "9")) (re.++ (str.to.re "9") (re.range "0" "6"))) (re.opt (str.to.re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (str.to.re "GD") (re.opt (str.to.re " ")) (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (str.to.re "HA") (re.opt (str.to.re " ")) (str.to.re "\x0a") (re.range "5" "9") (re.range "0" "9") (re.range "0" "9")))))
; myway\.comzmnjgmomgbdz\x2fzzmw\.gztUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "myway.comzmnjgmomgbdz/zzmw.gztUser-Agent:\x0a"))))
; /\x2epaq8o([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.paq8o") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (ISBN[-]*(1[03])*[ ]*(: ){0,1})*(([0-9Xx][- ]*){13}|([0-9Xx][- ]*){10})
(assert (str.in.re X (re.++ (re.* (re.++ (str.to.re "ISBN") (re.* (str.to.re "-")) (re.* (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "3")))) (re.* (str.to.re " ")) (re.opt (str.to.re ": ")))) (re.union ((_ re.loop 13 13) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 10 10) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " ")))))) (str.to.re "\x0a"))))
(check-sat)
