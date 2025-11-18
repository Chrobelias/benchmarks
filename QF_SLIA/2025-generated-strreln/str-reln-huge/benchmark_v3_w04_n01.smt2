(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "9")) (str.to_re "75")))))
(assert (str.in_re y (re.+ (re.++ (re.range "7" "9") (re.++ (str.to_re "759") (re.+ (re.range "1" "8")))))))
(assert (str.in_re z (re.++ (re.++ (re.range "4" "8") (re.* (re.* (str.to_re "47")))) (str.to_re "365"))))

(assert (> (+ (* 4 (str.len x)) (* 5 (str.len y)) (* (- 4) (str.len z))) 99))
(assert (>= (+ (* (- 9) (str.len x)) (str.len z)) 50))
(assert (<= (+ (* 3 (str.to_int x)) (* (- 6) (str.to_int z))) 23))
(assert (>= (+ (* 5 (str.len x)) (* 3 (str.len y)) (* (- 7) (str.len z))) 84))

(check-sat)