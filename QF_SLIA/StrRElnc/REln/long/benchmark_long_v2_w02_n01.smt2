(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (str.to_re "73"))))
(assert (str.in_re x (re.+ (re.+ (re.++ (re.+ (str.to_re "9")) (str.to_re "71"))))))

(assert (= (+ (str.len x) (* (- 5) (str.len y))) 31))
(assert (> (+ (* 9 (str.to_int x)) (- (str.to_int y))) 23))

(check-sat)