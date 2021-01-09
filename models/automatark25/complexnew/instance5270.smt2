(declare-const X String)
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ re.allchar) (str.to.re "]") (re.+ re.allchar) (str.to.re "[") (re.opt (str.to.re "n")) (str.to.re "varchar]") (re.+ re.allchar) (str.to.re "NULL,\x0a")))))
; Login\sHost\x3A\w+Host\x3aiz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "Login") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\x0a")))))
; /filename=[^\n]*\x2edcr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a")))))
; User-Agent\x3A\d+dll\x3F.*started\x2EfeedbackUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.* re.allchar) (str.to.re "started.feedbackUser-Agent:\x0a")))))
; ([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
