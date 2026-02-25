(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "11")))

(assert (str.in_re y (re.union (re.+ (re.range "1" "7")) (str.to_re "7"))))
(assert (str.in_re x (re.+ (re.* (re.+ (re.+ (re.range "3" "8")))))))

(assert (>= (+ (* (- 2) (str.to_int x)) (* (- 2) (str.to_int y))) 90))
(assert (> (+ (* 7 (str.len x)) (* 2 (str.len y))) 53))
(assert (> (+ (* 7 (str.to_int x)) (* (- 2) (str.to_int y))) 43))

(check-sat)