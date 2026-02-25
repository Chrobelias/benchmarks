(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "34")))

(assert (str.in_re y (re.++ (re.+ (re.+ (str.to_re "3"))) (re.+ (re.range "1" "9")))))
(assert (str.in_re x (re.++ (re.* (re.range "2" "4")) (re.* (str.to_re "701")))))

(assert (>= (+ (* 6 (str.len y)) (* 9 (str.to_int x))) 8))
(assert (= (+ (* (- 5) (str.len x)) (* 5 (str.len y))) 70))
(assert (< (+ (* (- 10) (str.to_int x)) (* (- 2) (str.to_int y))) 63))

(check-sat)