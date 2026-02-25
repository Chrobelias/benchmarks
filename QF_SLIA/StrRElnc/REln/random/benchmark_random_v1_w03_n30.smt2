(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.* (str.to_re "339")) (re.range "6" "8")) (str.to_re "54"))))

(assert (<= (* (- 7) (str.len x)) 83))
(assert (<= (* 4 (str.len x)) 100))
(assert (< (str.to_int x) 82))

(check-sat)