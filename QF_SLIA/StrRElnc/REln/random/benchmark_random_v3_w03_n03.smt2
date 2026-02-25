(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (str.to_re "411"))))
(assert (str.in_re z (re.+ (re.range "6" "9"))))
(assert (str.in_re y (re.++ (str.to_re "260") (re.+ (re.* (str.to_re "83"))))))

(assert (> (+ (* (- 7) (str.len y)) (- (str.len z)) (* 8 (str.to_int x))) 76))
(assert (= (+ (* 4 (str.len x)) (* (- 6) (str.len y)) (* 5 (str.len z))) 32))

(check-sat)