(declare-const X String)
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a"))))
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (not (str.in.re X (str.to.re "CMDLoginExciteSubject:downloadfile.org\x0a"))))
; /filename=[^\n]*\x2edir/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dir/i\x0a"))))
(check-sat)
