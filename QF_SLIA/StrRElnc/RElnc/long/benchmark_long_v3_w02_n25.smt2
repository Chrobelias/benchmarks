(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ z y "26")))

(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "63")) (re.range "5" "7")) (re.* (str.to_re "284")))))
(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "8"))) (re.+ (re.range "2" "9")))))
(assert (str.in_re z (re.++ (re.range "3" "8") (re.+ (re.+ (re.+ (str.to_re "495")))))))

(assert (<= (+ (* (- 4) (str.len x)) (* 9 (str.len y)) (* (- 3) (str.len z))) 45))
(assert (> (+ (* (- 6) (str.to_int x)) (* 8 (str.to_int y)) (* 4 (str.to_int z))) 0))

(check-sat)