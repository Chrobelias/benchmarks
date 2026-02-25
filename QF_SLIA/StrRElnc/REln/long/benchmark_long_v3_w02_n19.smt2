(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re y (re.* (str.to_re "731"))))
(assert (str.in_re z (re.+ (str.to_re "293"))))
(assert (str.in_re x (re.union (re.++ (re.range "4" "9") (re.range "2" "5")) (re.* (re.range "0" "4")))))

(assert (<= (+ (* (- 6) (str.to_int x)) (* 3 (str.to_int y)) (* (- 8) (str.to_int z))) 47))
(assert (= (+ (* (- 6) (str.len x)) (* 8 (str.len y)) (* (- 7) (str.len z))) 89))

(check-sat)