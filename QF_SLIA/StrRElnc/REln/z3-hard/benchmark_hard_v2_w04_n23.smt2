(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.range "0" "3"))))
(assert (str.in_re x (re.++ (str.to_re "217") (re.union (re.++ (str.to_re "553") (re.+ (str.to_re "69"))) (str.to_re "18")))))

(assert (>= (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y))) 1))
(assert (< (+ (* 10 (str.to_int x)) (* 2 (str.to_int y))) 96))
(assert (<= (* (- 10) (str.len x)) 73))
(assert (<= (+ (* 6 (str.len x)) (* 6 (str.len y))) 63))

(check-sat)