(declare-const X String)
; /^\/ABs[A-Za-z0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//ABs") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; ^((\D*[a-z]\D*[A-Z]\D*)|(\D*[A-Z]\D*[a-z]\D*)|(\D*\W\D*[a-z])|(\D*\W\D*[A-Z])|(\D*[a-z]\D*\W)|(\D*[A-Z]\D*\W))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z") (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z") (re.* (re.comp (re.range "0" "9")))) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z") (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z") (re.* (re.comp (re.range "0" "9")))) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z")) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z")) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "a" "z") (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.++ (re.* (re.comp (re.range "0" "9"))) (re.range "A" "Z") (re.* (re.comp (re.range "0" "9"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a"))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in.re X (str.to.re "/rssScaneradfsgecoiwnf\x1b}{Trojan:logsHost:\x0a")))
; ^[D-d][K-k]( |-)[1-9]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a")))
(check-sat)
