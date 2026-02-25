(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "20")))))
(assert (str.in_re z (re.union (re.range "1" "4") (re.+ (str.to_re "33")))))
(assert (str.in_re y (re.++ (str.to_re "341") (re.* (str.to_re "87")))))

(assert (>= (+ (* (- 3) (str.to_int x)) (* 6 (str.to_int y)) (* 4 (str.to_int z))) 99))
(assert (= (+ (* (- 5) (str.len x)) (- (str.len y)) (* (- 4) (str.len z))) 54))

(check-sat)