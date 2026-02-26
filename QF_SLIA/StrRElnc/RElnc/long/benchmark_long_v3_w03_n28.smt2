(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ z x "78")))

(assert (str.in_re z (re.* (str.to_re "45"))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "4") (str.to_re "45")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "4") (re.+ (str.to_re "39"))) (re.+ (re.range "4" "9")))))

(assert (<= (+ (* (- 5) (str.len x)) (* (- 2) (str.len y)) (* 9 (str.len z))) 54))
(assert (<= (+ (* (- 3) (str.len x)) (* (- 7) (str.len y)) (* 4 (str.len z))) 60))
(assert (>= (+ (* (- 3) (str.to_int x)) (* 3 (str.to_int y)) (- (str.to_int z))) 56))

(check-sat)