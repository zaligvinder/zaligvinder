(declare-const X String)
; ^[\\(]{0,1}[0-9]{3}([\\)]{0,1}|-|\s){0,1}[0-9]{3}(-|\s){0,1}[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "\x5c") (str.to.re "("))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (re.opt (re.union (str.to.re "\x5c") (str.to.re ")"))) (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /new (java|org)/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a")))))
; ^(Sun|Mon|(T(ues|hurs))|Fri)(day|\.)?$|Wed(\.|nesday)?$|Sat(\.|urday)?$|T((ue?)|(hu?r?))\.?$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "Sun") (str.to.re "Mon") (re.++ (str.to.re "T") (re.union (str.to.re "ues") (str.to.re "hurs"))) (str.to.re "Fri")) (re.opt (re.union (str.to.re "day") (str.to.re ".")))) (re.++ (str.to.re "Wed") (re.opt (re.union (str.to.re ".") (str.to.re "nesday")))) (re.++ (str.to.re "Sat") (re.opt (re.union (str.to.re ".") (str.to.re "urday")))) (re.++ (str.to.re "T") (re.union (re.++ (str.to.re "u") (re.opt (str.to.re "e"))) (re.++ (str.to.re "h") (re.opt (str.to.re "u")) (re.opt (str.to.re "r")))) (re.opt (str.to.re ".")) (str.to.re "\x0a"))))))
; frame_ver2\s+communityLibrarySoftwareWinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid
(assert (str.in.re X (re.++ (str.to.re "frame_ver2") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "communityLibrarySoftwareWinCrashcomHost:tid=%toolbar_id\x0a"))))
(check-sat)
