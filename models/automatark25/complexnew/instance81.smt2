(declare-const X String)
; ^[ a - z, 0 - 9 , ?   -   ?   ,?   -   ? , ?    -  ?   ,?   -  ? , . ]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "a") (re.range " " " ") (str.to.re "z") (str.to.re ",") (str.to.re "0") (str.to.re "9") (str.to.re "?") (str.to.re ".")) (str.to.re "\x0a"))))
; Microsoft\w+Toolbar\x22StarLogger\x22
(assert (not (str.in.re X (re.++ (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Toolbar\x22StarLogger\x22\x0a")))))
; ^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (re.range "A" "Z") (re.range "a" "z")))))))
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "filename=\x22") (re.range "0" "9") (str.to.re "DA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13wlpgskmv/lwzo.qv#Subject:Activity\x0a"))))
(check-sat)
