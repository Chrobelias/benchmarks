(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.++ (re.+ (str.to_re "35")) (re.union (str.to_re "142") (str.to_re "47")))))
(assert (str.in_re x (re.+ (re.+ (str.to_re "22")))))
(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "52")) (re.range "2" "9")))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 5) (str.len y)) (* 7 (str.to_int z))) 75))
(assert (< (+ (* (- 10) (str.len x)) (- (str.len y)) (* 8 (str.len z))) 80))

(check-sat)