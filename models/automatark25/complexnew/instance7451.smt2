(declare-const X String)
; \b(((20)((0[0-9])|(1[0-1])))|(([1][^0-8])?\d{2}))((0[1-9])|1[0-2])((0[1-9])|(2[0-9])|(3[01]))[-+]?\d{4}[,.]?\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "20") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.++ (re.opt (re.++ (str.to.re "1") (re.range "0" "8"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.opt (re.union (str.to.re "-") (str.to.re "+"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a")))))
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(\s*\d\s*){11}$
(assert (not (str.in.re X (re.++ ((_ re.loop 11 11) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a")))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/shdoclc.fcgi\x0a"))))
; ^ *(1[0-2]|[1-9]):[0-5][0-9] *(a|p|A|P)(m|M) *$
(assert (str.in.re X (re.++ (re.* (str.to.re " ")) (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.* (str.to.re " ")) (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (re.* (str.to.re " ")) (str.to.re "\x0a"))))
(check-sat)
