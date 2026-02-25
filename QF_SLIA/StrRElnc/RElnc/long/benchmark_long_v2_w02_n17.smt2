(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "17" x)))

(assert (str.in_re x (re.+ (str.to_re "163"))))
(assert (str.in_re y (re.+ (re.range "0" "7"))))

(assert (>= (+ (* (- 9) (str.len x)) (* (- 9) (str.len y))) 43))
(assert (< (+ (* 2 (str.to_int x)) (* 10 (str.to_int y))) 77))

(check-sat)