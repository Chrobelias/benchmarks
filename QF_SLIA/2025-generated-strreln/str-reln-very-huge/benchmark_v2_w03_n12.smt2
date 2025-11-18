(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "5")) (re.+ (str.to_re "68"))))))
(assert (str.in_re y (re.+ (re.union (re.* (re.range "6" "8")) (str.to_re "18")))))

(assert (= (+ (* 4 (str.len x)) (* 2 (str.len y))) 52))
(assert (< (+ (* (- 2) (str.len x)) (* 4 (str.to_int x))) 26))

(check-sat)