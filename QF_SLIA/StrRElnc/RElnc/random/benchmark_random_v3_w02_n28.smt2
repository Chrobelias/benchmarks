(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ y "10")))

(assert (str.in_re z (re.union (re.+ (str.to_re "10")) (re.+ (str.to_re "30")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "2")) (re.+ (re.range "4" "8")))))
(assert (str.in_re y (re.* (re.* (re.range "1" "7")))))

(assert (= (+ (* 6 (str.len y)) (* 3 (str.len z))) 61))
(assert (< (+ (* (- 6) (str.to_int x)) (- (str.to_int y)) (* 4 (str.to_int z))) 29))

(check-sat)