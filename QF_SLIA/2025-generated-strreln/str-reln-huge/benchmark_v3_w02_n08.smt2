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

(assert (str.in_re x (re.union (re.+ (re.+ (str.to_re "721"))) (str.to_re "47"))))
(assert (str.in_re y (re.++ (re.union (re.* (re.* (str.to_re "960"))) (str.to_re "672")) (re.range "1" "3"))))
(assert (str.in_re z (re.+ (re.range "6" "8"))))

(assert (= (+ (* (- 7) (str.len x)) (* 3 (str.len y)) (- (str.len z))) 63))
(assert (>= (+ (* (- 10) (str.to_int x)) (- (str.to_int y)) (* 3 (str.to_int z))) 31))

(check-sat)