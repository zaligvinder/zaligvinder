(declare-const X String)
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a")))
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (not (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a"))))
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.* re.allchar) (str.to.re "as.starware.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbarcojud.dmcast.com\x0a"))))
; ^(0|[-]{1}([1-9]{1}[0-9]{0,1}|[1]{1}([0-1]{1}[0-9]{1}|[2]{1}[0-8]{1}))|(\+)?([1-9]{1}[0-9]{0,1}|[1]{1}([0-1]{1}[0-9]{1}|[2]{1}[0-7]{1})))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ ((_ re.loop 1 1) (str.to.re "-")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "1")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "8"))))))) (re.++ (re.opt (str.to.re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "1")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "2")) ((_ re.loop 1 1) (re.range "0" "7")))))))) (str.to.re "\x0a")))))
(check-sat)
