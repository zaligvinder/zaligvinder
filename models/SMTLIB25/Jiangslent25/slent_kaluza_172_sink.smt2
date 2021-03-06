(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_SELECT_17 () Bool)
(declare-fun T_c1 () Bool)
(declare-fun T_c2 () Bool)
(declare-fun I0_287 () Int)
(declare-fun I0_291 () Int)
(declare-fun I1_287 () Int)
(declare-fun I1_291 () Int)
(declare-fun I2_287 () Int)
(declare-fun I2_291 () Int)
(declare-fun PCTEMP_LHS_75 () Int)
(declare-fun T_c6 () Int)
(declare-fun NEW_DGNode_741 () String)
(declare-fun NEW_DGNode_742 () String)
(declare-fun PCTEMP_LHS_79 () String)
(assert (= PCTEMP_LHS_79 NEW_DGNode_742))
(assert (= NEW_DGNode_742 NEW_DGNode_741))
(assert (not (str.in.re NEW_DGNode_742 (str.to.re "+"))))
(assert (not (str.in.re NEW_DGNode_741 (str.to.re "%"))))
(assert (= T_SELECT_17 (not (= PCTEMP_LHS_75 (- 1)))))
(assert T_c2)
(assert (= T_c2 (not T_c1)))
(assert (= T_c1 (= PCTEMP_LHS_75 (- 1))))
(assert (= I0_287 (- PCTEMP_LHS_75 0)))
(assert (>= PCTEMP_LHS_75 0))
(assert (= I2_287 I1_287))
(assert (<= PCTEMP_LHS_75 I1_287))
(assert (= T_c6 (+ PCTEMP_LHS_75 1)))
(assert (>= T_c6 0))
(assert (>= I2_291 T_c6))
(assert (= I2_291 I1_291))
(assert (<= I2_291 I1_291))
(assert (= I0_291 (- I2_291 T_c6)))
(assert (= I0_291 (str.len PCTEMP_LHS_79))) ; len 0
(check-sat)
(exit)
