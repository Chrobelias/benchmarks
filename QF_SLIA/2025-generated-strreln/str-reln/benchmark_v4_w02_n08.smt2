(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.* (re.* (str.to_re "63"))) (re.+ (str.to_re "909")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "37")) (re.+ (str.to_re "327")))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "146")) (re.* (str.to_re "964"))))))
(assert (str.in_re a (re.+ (re.* (re.++ (str.to_re "94") (str.to_re "5"))))))

(assert (< (+ (* 10 (str.len x)) (- (str.len y)) (* 5 (str.to_int a))) 11))

(check-sat)