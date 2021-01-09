(declare-const X String)
; ^((Fred|Wilma)\s+Flintstone|(Barney|Betty)\s+Rubble)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Fred") (str.to.re "Wilma")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Flintstone")) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "RubbleB") (re.union (str.to.re "arney") (str.to.re "etty")))) (str.to.re "\x0a")))))
; ^(FR)?\s?[A-Z0-9-[IO]]{2}[0-9]{9}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "FR")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "[") (str.to.re "I") (str.to.re "O")) ((_ re.loop 2 2) (str.to.re "]")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; /[a-z]{2}_[a-z0-9]{8}\.mod/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_") ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".mod/Ui\x0a")))))
; \x2Fdesktop\x2FSystemwwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (str.to.re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\x0a")))
(check-sat)
