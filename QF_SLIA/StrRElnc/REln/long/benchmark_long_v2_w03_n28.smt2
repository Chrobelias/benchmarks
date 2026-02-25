(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "12")) (re.+ (str.to_re "16"))))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "86") (re.+ (re.+ (str.to_re "589")))) (str.to_re "6"))))

(assert (= (+ (* 9 (str.len y)) (* 3 (str.to_int x))) 48))
(assert (= (+ (* (- 9) (str.len x)) (* 7 (str.len y))) 79))

(check-sat)