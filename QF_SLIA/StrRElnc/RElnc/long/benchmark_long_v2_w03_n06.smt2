(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "26")))

(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "59")) (str.to_re "816")))))
(assert (str.in_re y (re.+ (re.range "0" "8"))))

(assert (> (+ (* 7 (str.len x)) (str.len y)) 11))
(assert (>= (+ (* 10 (str.to_int x)) (* 2 (str.to_int y))) 67))
(assert (>= (* (- 8) (str.to_int y)) 25))

(check-sat)