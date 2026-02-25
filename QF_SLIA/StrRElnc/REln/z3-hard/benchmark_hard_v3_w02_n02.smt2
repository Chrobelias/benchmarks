(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (str.to_re "488") (re.++ (re.union (str.to_re "83") (re.+ (str.to_re "63"))) (re.range "3" "9")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "348")) (re.+ (str.to_re "872")))))
(assert (str.in_re x (re.* (re.+ (re.* (re.* (str.to_re "7")))))))

(assert (= (+ (* (- 3) (str.to_int x)) (- (str.to_int y)) (str.to_int z)) 86))
(assert (>= (+ (str.len x) (* (- 4) (str.len y)) (- (str.len z))) 82))

(check-sat)