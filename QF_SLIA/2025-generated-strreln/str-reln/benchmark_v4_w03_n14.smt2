(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "41") (str.to_re "2"))))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "8") (str.to_re "857")) (re.+ (str.to_re "69")))))
(assert (str.in_re z (re.+ (re.++ (re.+ (str.to_re "396")) (re.+ (str.to_re "6"))))))
(assert (str.in_re a (re.* (re.range "0" "7"))))

(assert (<= (+ (* 4 (str.to_int x)) (* 4 (str.to_int y)) (* (- 9) (str.to_int z)) (* (- 3) (str.to_int a))) 42))
(assert (>= (+ (* (- 8) (str.len x)) (* 6 (str.len y)) (* (- 7) (str.len z)) (* 6 (str.len a))) 51))
(assert (> (+ (* (- 4) (str.len x)) (* (- 9) (str.len y)) (* 4 (str.len z)) (str.len a)) 82))

(check-sat)