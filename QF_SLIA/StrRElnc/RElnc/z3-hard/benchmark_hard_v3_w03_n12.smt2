(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x z "43")))

(assert (str.in_re y (re.+ (re.* (re.* (re.range "2" "9"))))))
(assert (str.in_re z (re.+ (re.* (re.+ (re.+ (re.range "4" "6")))))))
(assert (str.in_re x (re.union (re.++ (str.to_re "953") (re.+ (str.to_re "118"))) (re.* (re.range "2" "5")))))

(assert (<= (+ (* (- 3) (str.len z)) (* (- 9) (str.to_int x)) (* 4 (str.to_int y)) (* (- 3) (str.to_int z))) 30))
(assert (> (+ (* 4 (str.to_int y)) (- (str.to_int z))) 47))

(check-sat)