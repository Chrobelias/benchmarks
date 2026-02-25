(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "8")) (str.to_re "30"))))
(assert (str.in_re y (re.+ (re.* (re.union (re.range "7" "9") (re.+ (str.to_re "927")))))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "96")) (re.+ (str.to_re "496"))))))

(assert (>= (+ (* 8 (str.len x)) (* (- 9) (str.len y)) (* 9 (str.len z))) 41))
(assert (> (+ (* 4 (str.len x)) (* 8 (str.len z)) (* (- 9) (str.to_int x)) (* (- 4) (str.to_int y))) 19))

(check-sat)