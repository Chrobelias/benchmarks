(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "47")))

(assert (str.in_re y (re.+ (re.range "0" "2"))))
(assert (str.in_re x (re.+ (re.+ (re.range "1" "9")))))

(assert (>= (+ (* (- 9) (str.to_int x)) (* (- 2) (str.to_int y))) 63))
(assert (= (+ (* 4 (str.len x)) (* 2 (str.len y))) 38))
(assert (>= (+ (str.len x) (* (- 7) (str.len y))) 53))
(assert (>= (* 8 (str.to_int x)) 13))

(check-sat)