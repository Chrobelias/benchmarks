(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "93")) (re.range "7" "9"))))

(assert (< (+ (* (- 5) (str.len x)) (* 5 (str.to_int x))) 12))
(assert (>= (* 4 (str.to_int x)) 73))

(check-sat)