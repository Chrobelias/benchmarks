(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (str.to_re "5"))))
(assert (str.in_re y (re.++ (re.range "6" "8") (re.* (re.+ (str.to_re "47"))))))

(assert (>= (+ (* 4 (str.len x)) (* 4 (str.to_int y))) 16))
(assert (>= (+ (- (str.len x)) (* (- 2) (str.len y))) 49))
(assert (> (+ (- (str.to_int x)) (* 10 (str.to_int y))) 98))

(check-sat)