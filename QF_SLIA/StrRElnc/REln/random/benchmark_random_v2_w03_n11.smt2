(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.* (re.union (str.to_re "26") (str.to_re "849"))) (str.to_re "662"))))
(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "5") (str.to_re "256"))) (re.range "5" "9"))))

(assert (< (+ (* (- 5) (str.len x)) (* 2 (str.len y))) 26))
(assert (<= (+ (* 8 (str.len x)) (str.len y)) 99))
(assert (= (+ (* 9 (str.to_int x)) (* (- 9) (str.to_int y))) 30))

(check-sat)