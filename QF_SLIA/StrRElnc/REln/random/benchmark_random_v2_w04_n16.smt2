(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (re.++ (str.to_re "25") (re.* (re.range "5" "9"))) (str.to_re "42")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "779") (str.to_re "70")))))

(assert (> (+ (* 10 (str.len x)) (* 4 (str.len y)) (* 4 (str.to_int y))) 41))
(assert (= (+ (* (- 5) (str.to_int x)) (* 4 (str.to_int y))) 54))
(assert (> (+ (* (- 6) (str.to_int x)) (* 3 (str.to_int y))) 52))

(check-sat)