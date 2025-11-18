(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.* (re.+ (re.union (re.* (str.to_re "92")) (str.to_re "33"))))))
(assert (str.in_re y (re.+ (re.+ (str.to_re "257")))))
(assert (str.in_re z (re.union (str.to_re "648") (re.++ (re.* (re.+ (str.to_re "909"))) (str.to_re "233")))))

(assert (>= (+ (* 7 (str.len x)) (- (str.len y)) (* 6 (str.len z))) 20))
(assert (= (+ (* (- 4) (str.to_int x)) (* 10 (str.to_int y)) (* (- 7) (str.to_int z))) 80))

(check-sat)