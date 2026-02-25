(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (re.range "4" "9")) (str.to_re "907"))))
(assert (str.in_re z (re.++ (re.++ (re.+ (str.to_re "88")) (str.to_re "9")) (re.+ (str.to_re "678")))))
(assert (str.in_re y (re.union (re.range "6" "9") (re.union (str.to_re "12") (re.* (str.to_re "2"))))))

(assert (> (+ (* 5 (str.to_int x)) (* 4 (str.to_int y)) (* (- 6) (str.to_int z))) 81))
(assert (>= (+ (* (- 7) (str.len x)) (* (- 3) (str.len y)) (* 2 (str.len z))) 11))

(check-sat)