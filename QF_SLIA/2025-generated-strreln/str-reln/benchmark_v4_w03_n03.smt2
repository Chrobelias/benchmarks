(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "4") (str.to_re "54")))))
(assert (str.in_re y (re.union (re.union (str.to_re "62") (str.to_re "64")) (re.+ (str.to_re "821")))))
(assert (str.in_re z (re.union (re.++ (re.+ (str.to_re "5")) (str.to_re "601")) (str.to_re "1"))))
(assert (str.in_re a (re.++ (str.to_re "77") (re.* (str.to_re "764")))))

(assert (= (+ (* 8 (str.len x)) (- (str.len y)) (* 10 (str.len z))) 31))
(assert (= (+ (- (str.to_int y)) (- (str.to_int z)) (* 5 (str.to_int a))) 74))
(assert (>= (+ (str.to_int x) (* (- 8) (str.to_int z)) (* (- 8) (str.to_int a))) 56))

(check-sat)