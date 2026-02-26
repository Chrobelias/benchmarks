(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "31" z)))

(assert (str.in_re x (re.++ (re.range "3" "8") (re.+ (re.+ (re.* (re.range "5" "8")))))))
(assert (str.in_re y (re.* (re.* (re.range "0" "3")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "3") (str.to_re "946")))))

(assert (> (+ (* 8 (str.len x)) (* 5 (str.len y)) (* 2 (str.len z))) 77))
(assert (= (+ (* 6 (str.len x)) (* (- 7) (str.len y))) 68))
(assert (< (+ (* (- 3) (str.to_int x)) (* (- 5) (str.to_int y))) 0))

(check-sat)