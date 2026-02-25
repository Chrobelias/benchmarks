(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (re.++ (re.range "5" "7") (str.to_re "17")))))
(assert (str.in_re x (re.* (str.to_re "27"))))

(assert (= (+ (* 2 (str.to_int x)) (* (- 4) (str.to_int y))) 50))
(assert (< (+ (* 6 (str.len x)) (* 3 (str.to_int y))) 78))
(assert (<= (+ (* 8 (str.to_int x)) (str.to_int y)) 65))

(check-sat)