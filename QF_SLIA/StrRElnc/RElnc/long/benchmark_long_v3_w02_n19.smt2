(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ x z) (str.++ y "53")))

(assert (str.in_re y (re.union (str.to_re "4") (re.* (str.to_re "7")))))
(assert (str.in_re z (re.++ (re.* (re.range "2" "7")) (re.* (re.range "1" "5")))))
(assert (str.in_re x (re.+ (re.union (re.union (re.+ (re.range "4" "9")) (str.to_re "61")) (str.to_re "394")))))

(assert (< (+ (* (- 7) (str.len z)) (* 5 (str.to_int x)) (* 4 (str.to_int y)) (* 6 (str.to_int z))) 95))

(check-sat)