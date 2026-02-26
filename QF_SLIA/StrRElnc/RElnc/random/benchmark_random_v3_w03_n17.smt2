(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ "16" x)))

(assert (str.in_re z (re.union (re.+ (str.to_re "615")) (str.to_re "16"))))
(assert (str.in_re y (re.* (re.union (re.union (re.+ (str.to_re "9")) (str.to_re "471")) (str.to_re "11")))))
(assert (str.in_re x (re.++ (re.* (re.++ (str.to_re "812") (str.to_re "32"))) (re.range "6" "9"))))

(assert (>= (+ (* (- 7) (str.len z)) (* 3 (str.to_int x)) (* 3 (str.to_int z))) 94))
(assert (< (+ (* (- 5) (str.to_int x)) (- (str.to_int y)) (* 8 (str.to_int z))) 66))

(check-sat)