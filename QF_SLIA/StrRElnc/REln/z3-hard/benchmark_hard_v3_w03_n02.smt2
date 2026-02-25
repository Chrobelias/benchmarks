(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (str.to_re "22"))))
(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "6")) (str.to_re "929")))))
(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "601")) (str.to_re "973")))))

(assert (= (+ (str.len x) (- (str.to_int x)) (* 9 (str.to_int y)) (* (- 9) (str.to_int z))) 68))
(assert (< (+ (* (- 8) (str.len x)) (* 2 (str.len y)) (* (- 2) (str.len z))) 31))

(check-sat)