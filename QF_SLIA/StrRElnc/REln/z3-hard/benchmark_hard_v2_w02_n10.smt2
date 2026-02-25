(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.* (re.union (str.to_re "63") (str.to_re "8"))) (str.to_re "45"))))
(assert (str.in_re x (re.+ (re.range "4" "9"))))

(assert (= (+ (* 8 (str.len x)) (* (- 10) (str.len y))) 92))
(assert (>= (+ (* (- 3) (str.to_int x)) (str.to_int y)) 71))

(check-sat)