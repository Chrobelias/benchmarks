(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.union (str.to_re "1") (str.to_re "872")) (re.* (re.range "5" "8")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "944")) (re.+ (re.+ (str.to_re "52"))))))

(assert (> (+ (- (str.to_int x)) (* 2 (str.to_int y))) 68))
(assert (<= (+ (- (str.len x)) (* 10 (str.len y))) 43))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 9) (str.to_int y))) 44))

(check-sat)