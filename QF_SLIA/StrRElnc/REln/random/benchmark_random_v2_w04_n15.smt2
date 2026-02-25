(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "6") (re.++ (str.to_re "1") (re.+ (str.to_re "22")))))))
(assert (str.in_re y (re.++ (re.* (re.* (str.to_re "65"))) (str.to_re "473"))))

(assert (> (+ (- (str.to_int x)) (* (- 2) (str.to_int y))) 18))
(assert (= (+ (- (str.to_int x)) (- (str.to_int y))) 77))
(assert (= (+ (* 3 (str.len y)) (* (- 7) (str.to_int x)) (* 7 (str.to_int y))) 28))

(check-sat)