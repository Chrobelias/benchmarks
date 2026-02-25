(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (str.to_re "5") (re.+ (re.union (str.to_re "11") (str.to_re "892"))))))
(assert (str.in_re y (re.* (re.* (re.* (str.to_re "12"))))))
(assert (str.in_re z (re.+ (re.union (re.range "6" "8") (str.to_re "69")))))

(assert (<= (+ (* 10 (str.to_int x)) (* 7 (str.to_int y))) 4))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 2) (str.len y)) (* 2 (str.len z))) 75))

(check-sat)