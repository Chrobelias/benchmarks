(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "896") (re.union (re.* (str.to_re "8")) (str.to_re "131")))))

(assert (= (+ (* 6 (str.len x)) (* (- 10) (str.to_int x))) 92))
(assert (< (* (- 9) (str.len x)) 19))

(check-sat)