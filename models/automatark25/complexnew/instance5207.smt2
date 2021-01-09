(declare-const X String)
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "DisableSandboxAndDrop") (str.to.re "ConfusedClass") (str.to.re "FieldAccessVerifierExpl")) (str.to.re ".class/ims\x0a"))))
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (str.in.re X (re.++ (str.to.re "\x22StarLogger\x22") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:jokeWEBCAM-\x0a"))))
; ^[-+]?[0-9]\d{0,2}(\.\d{1,2})?%?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "0" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ekvl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".kvl/i\x0a")))))
; WinCrashcomHost\x3Atid\x3D\x25toolbar\x5Fid4\x2e8\x2e4
(assert (str.in.re X (str.to.re "WinCrashcomHost:tid=%toolbar_id4.8.4\x0a")))
(check-sat)
