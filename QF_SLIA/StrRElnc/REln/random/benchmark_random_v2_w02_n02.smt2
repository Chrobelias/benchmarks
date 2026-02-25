(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "653")) (re.+ (re.* (str.to_re "7"))))))
(assert (str.in_re x (re.+ (str.to_re "42"))))

(assert (= (+ (* 4 (str.len y)) (- (str.to_int y))) 67))

(check-sat)