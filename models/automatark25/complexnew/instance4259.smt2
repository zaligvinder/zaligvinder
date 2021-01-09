(declare-const X String)
; ^(([8]))$|^((([0-7]))$|^((([0-7])).?((25)|(50)|(5)|(75)|(0)|(00))))$
(assert (not (str.in.re X (re.union (str.to.re "8") (re.++ (re.union (re.range "0" "7") (re.++ (re.range "0" "7") (re.opt re.allchar) (re.union (str.to.re "25") (str.to.re "50") (str.to.re "5") (str.to.re "75") (str.to.re "0") (str.to.re "00")))) (str.to.re "\x0a"))))))
; ^[0-9]+([\,|\.]{0,1}[0-9]{2}){0,1}$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re ",") (str.to.re "|") (str.to.re "."))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; CH\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{1}|CH\d{19}
(assert (not (str.in.re X (re.++ (str.to.re "CH") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 19 19) (re.range "0" "9")) (str.to.re "\x0a")))))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PG=SPEEDBARadblock.linkz.com\x0a")))))
(check-sat)
