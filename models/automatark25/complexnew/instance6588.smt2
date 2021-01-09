(declare-const X String)
; 20\d{2}(-|\/)((0[1-9])|(1[0-2]))(-|\/)((0[1-9])|([1-2][0-9])|(3[0-1]))(T|\s)(([0-1][0-9])|(2[0-3])):([0-5][0-9]):([0-5][0-9])
(assert (str.in.re X (re.++ (str.to.re "20") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (re.union (str.to.re "T") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\x2esln/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a"))))
; /\x2e3gp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.3gp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(\d{1,8}|(\d{0,8}\.{1}\d{1,2}){1})$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 8) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 8) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
; [^\d^\-^\,^\x20]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "-") (str.to.re ",") (str.to.re " "))) (str.to.re "\x0a")))))
(check-sat)
