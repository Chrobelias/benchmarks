(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.+ (re.+ (str.to_re "7"))) (re.+ (str.to_re "630")))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "14") (str.to_re "85")))))

(assert (< (+ (str.len x) (* (- 7) (str.len y))) 26))
(assert (< (+ (* (- 3) (str.to_int x)) (* (- 9) (str.to_int y))) 71))
(assert (<= (* 4 (str.to_int x)) 41))
(assert (< (+ (* 6 (str.to_int x)) (* (- 4) (str.to_int y))) 43))

(check-sat)