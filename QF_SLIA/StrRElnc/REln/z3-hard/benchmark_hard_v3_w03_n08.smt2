(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (re.* (str.to_re "31")) (re.* (re.range "4" "7")))))
(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "457")) (re.range "5" "7")) (str.to_re "26"))))
(assert (str.in_re z (re.++ (str.to_re "856") (re.++ (str.to_re "85") (re.+ (str.to_re "24"))))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 2) (str.len y)) (* 3 (str.len z))) 100))
(assert (<= (+ (- (str.to_int x)) (* 7 (str.to_int y)) (* 10 (str.to_int z))) 68))
(assert (<= (+ (* 5 (str.len x)) (* (- 9) (str.len y)) (* 5 (str.len z))) 12))

(check-sat)