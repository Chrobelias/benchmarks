(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (re.+ (str.to_re "91")) (re.++ (str.to_re "28") (str.to_re "27")))))
(assert (str.in_re y (re.++ (str.to_re "786") (re.++ (re.+ (re.range "0" "7")) (re.range "7" "9")))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "752") (re.+ (re.range "4" "6"))) (re.* (str.to_re "17")))))

(assert (> (+ (* (- 7) (str.len x)) (* 7 (str.len y)) (* 9 (str.len z))) 22))
(assert (> (+ (* 7 (str.len x)) (* (- 2) (str.to_int x)) (* (- 7) (str.to_int y))) 44))

(check-sat)