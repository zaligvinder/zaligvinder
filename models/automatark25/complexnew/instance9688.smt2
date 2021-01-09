(declare-const X String)
; ^[\d]{4}[-\s]{1}[\d]{3}[-\s]{1}[\d]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (not (str.in.re X (str.to.re "wowokayoffers.bullseye-network.comRTB\x0d\x0a\x0d\x0aAttached\x0a"))))
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (str.in.re X (re.++ (str.to.re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to.re "\x0a"))))
; ^(\+?\d{1,2}[ -]?)?(\(\+?\d{2,3}\)|\+?\d{2,3})?[ -]?\d{3,4}[ -]?\d{3,4}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) (re.opt (re.union (re.++ (str.to.re "(") (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")")) (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 3) (re.range "0" "9"))))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
