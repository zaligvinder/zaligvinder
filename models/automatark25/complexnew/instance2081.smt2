(declare-const X String)
; Online\x2521\x2521\x2521\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (not (str.in.re X (re.++ (str.to.re "Online%21%21%21") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.biz\x0a")))))
; ([a-zA-Z]:(\\w+)*\\[a-zA-Z0_9]+)?.xls
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.* (re.++ (str.to.re "\x5c") (re.+ (str.to.re "w")))) (str.to.re "\x5c") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "0") (str.to.re "_") (str.to.re "9"))))) re.allchar (str.to.re "xls\x0a"))))
; ^100$|^\d{0,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (str.to.re "100") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; ^[0,1]?\d{1}\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3}))$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1"))) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/") (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1"))))) (str.to.re "/") (re.union (re.++ ((_ re.loop 1 1) (str.to.re "1")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\x2f\?ts\x3d[a-f0-9]{40}\x26/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?ts=") ((_ re.loop 40 40) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/Ui\x0a")))))
(check-sat)
