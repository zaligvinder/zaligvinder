(declare-const X String)
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (not (str.in_re X (re.++ (str.to_re "[") (re.+ re.allchar) (str.to_re "]") (re.+ re.allchar) (str.to_re "[") (re.opt (str.to_re "n")) (str.to_re "varchar]") (re.+ re.allchar) (str.to_re "NULL,\u{a}")))))
; Login\sHost\u{3A}\w+Host\u{3a}iz=iMeshBar%3f\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}")))))
; /filename=[^\n]*\u{2e}dcr/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dcr/i\u{a}")))))
; User-Agent\u{3A}\d+dll\u{3F}.*started\u{2E}feedbackUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "dll?") (re.* re.allchar) (str.to_re "started.feedbackUser-Agent:\u{a}")))))
; ([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
