(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (str.to_re "8"))))
(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "93")) (re.range "4" "9")) (re.+ (str.to_re "264")))))
(assert (str.in_re x (re.* (re.union (str.to_re "84") (re.+ (str.to_re "376"))))))

(assert (>= (+ (* 3 (str.to_int x)) (* 2 (str.to_int y)) (* 5 (str.to_int z))) 54))
(assert (= (+ (* (- 6) (str.len z)) (* 5 (str.to_int y))) 47))

(check-sat)