(declare-const X String)
; ^((\+){0,1}91(\s){0,1}(\-){0,1}(\s){0,1}){0,1}9[0-9](\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}[0-9]{7}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "91") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "9") (re.range "0" "9") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^\x3cmeta\x20name\x3d\x22token\x22\x20content\x3d\x22\xa4[A-F\d]{168}\xa4\x22\x2f\x3e$/
(assert (not (str.in.re X (re.++ (str.to.re "/<meta name=\x22token\x22 content=\x22\xa4") ((_ re.loop 168 168) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\xa4\x22/>/\x0a")))))
; /filename=[^\n]*\x2ecue/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cue/i\x0a")))))
(check-sat)
