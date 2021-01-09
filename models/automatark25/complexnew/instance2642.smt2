(declare-const X String)
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[^a-zA-Z0-9]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2edocx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docx/i\x0a")))))
; (0|(\+)?([1-9]{1}[0-9]{0,1}|[1]{1}[0-9]{0,2}|[2]{1}([0-4]{1}[0-9]{1}|[5]{1}[0-5]{1})))
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "1")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "5")) ((_ re.loop 1 1) (re.range "0" "5")))))))) (str.to.re "\x0a")))))
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]"))))
(check-sat)
