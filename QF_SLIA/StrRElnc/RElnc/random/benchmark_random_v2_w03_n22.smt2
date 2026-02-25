(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "33")))

(assert (str.in_re x (re.+ (re.union (re.+ (re.* (re.range "0" "6"))) (str.to_re "982")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "456")) (re.+ (re.* (str.to_re "1"))))))

(assert (>= (+ (* 7 (str.len x)) (* 3 (str.len y))) 81))
(assert (< (+ (* (- 5) (str.len x)) (* (- 5) (str.to_int x))) 5))

(check-sat)