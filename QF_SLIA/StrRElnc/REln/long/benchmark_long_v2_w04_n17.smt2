(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "199"))))
(assert (str.in_re y (re.++ (str.to_re "34") (re.+ (re.+ (re.range "2" "4"))))))

(assert (> (+ (- (str.len y)) (* (- 2) (str.to_int x))) 42))
(assert (< (+ (* 2 (str.len x)) (* 5 (str.to_int x)) (* 7 (str.to_int y))) 40))

(check-sat)