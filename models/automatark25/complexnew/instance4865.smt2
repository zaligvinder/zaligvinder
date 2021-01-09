(declare-const X String)
; ^[0-9]%?$|^1[0-9]%?$|^2[0-9]%?$|^3[0-5]%?$|^[0-9]\.\d{1,2}%?$|^1[0-9]\.\d{1,2}%?$|^2[0-9]\.\d{1,2}%?$|^3[0-4]\.\d{1,2}%?$|^35%?$
(assert (str.in.re X (re.union (re.++ (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "5") (re.opt (str.to.re "%"))) (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "4") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "35") (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; ^(FR)?\s?[A-Z0-9-[IO]]{2}[0-9]{9}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "FR")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "[") (str.to.re "I") (str.to.re "O")) ((_ re.loop 2 2) (str.to.re "]")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\([0-9]{3}\)[0-9]{3}(-)[0-9]{4}
(assert (not (str.in.re X (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a"))))
(check-sat)
